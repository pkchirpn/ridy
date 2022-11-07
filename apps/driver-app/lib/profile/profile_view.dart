import 'dart:io' show Platform;

import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/config.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ridy/generated/l10n.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config.dart';
import '../graphql/generated/graphql_api.dart';
import '../main_bloc.dart';
import '../query_result_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _rideDetailsFormKey = GlobalKey<FormState>();
  String countryCode = defaultCountryCode;
  String phoneNumber = "";
  int _currentStep = 0;
  String verificationId = "";
  String smsCode = "";
  StepState phoneNumberState = StepState.indexed;
  StepState verifyState = StepState.indexed;
  StepState contactState = StepState.indexed;
  StepState rideState = StepState.indexed;
  StepState payoutState = StepState.indexed;
  StepState documentsState = StepState.indexed;
  bool agreedToTerms = false;
  var focusNode = FocusNode();

  final allowedStatuses = [
    DriverStatus.waitingDocuments,
    DriverStatus.pendingApproval,
    DriverStatus.softReject
  ];

  @override
  Widget build(BuildContext context) {
    final mainBloc = context.read<MainBloc>();
    return Scaffold(
        body: SafeArea(
      minimum: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const RidyBackButton(),
            const SizedBox(height: 8),
            Text(
              "Driver Registration",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Query(
                options: QueryOptions(
                    document: GET_DRIVER_QUERY_DOCUMENT,
                    fetchPolicy: FetchPolicy.noCache),
                builder: (QueryResult result,
                    {Future<QueryResult?> Function()? refetch,
                    FetchMore? fetchMore}) {
                  if (result.isLoading) {
                    return QueryResultView(result);
                  }
                  List<GetDriver$Query$CarModel> models = [];
                  List<GetDriver$Query$CarColor> colors = [];
                  GetDriver$Query query = GetDriver$Query();
                  if (result.data != null) {
                    query = GetDriver$Query.fromJson(result.data!);
                    models = query.carModels;
                    colors = query.carColors;
                    if (query.driver?.mobileNumber != null) {
                      if (!allowedStatuses.contains(query.driver?.status)) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Navigator.pop(context);
                        });
                      }
                      phoneNumber = query.driver?.mobileNumber ?? "";
                      phoneNumberState = StepState.complete;
                      verifyState = StepState.complete;
                      _currentStep = 2;
                    }
                    if (query.driver?.address?.isNotEmpty ?? false) {
                      _currentStep = 3;
                      contactState = StepState.complete;
                    }
                    if (query.driver?.carPlate?.isNotEmpty ?? false) {
                      _currentStep = 4;
                      rideState = StepState.complete;
                    }
                    if (query.driver?.bankRoutingNumber?.isNotEmpty ?? false) {
                      _currentStep = 5;
                      payoutState = StepState.complete;
                    }
                  }
                  final driver = query.driver ?? GetDriver$Query$Driver();
                  driver.documents = [];
                  return Mutation(
                    options: MutationOptions(
                        document: SET_DOCUMENTS_ON_DRIVER_MUTATION_DOCUMENT,
                        fetchPolicy: FetchPolicy.noCache,
                        update: (GraphQLDataProxy cache, QueryResult? result) {
                          final driver = SetDocumentsOnDriver$Mutation.fromJson(
                              result!.data!);
                          cache.writeQuery(
                              Operation(document: ME_QUERY_DOCUMENT)
                                  .asRequest(),
                              data: {
                                "driver": result.data!['updateOneDriver'],
                                "requireUpdate": "Latest"
                              });
                          mainBloc.add(DriverUpdated(driver.updateOneDriver));
                        }),
                    builder: (RunMutation runSetDocumentsMutation,
                            QueryResult? setDocumentMutationResult) =>
                        Mutation(
                            options: MutationOptions(
                                document: LOGIN_MUTATION_DOCUMENT,
                                fetchPolicy: FetchPolicy.noCache),
                            builder: (RunMutation runLoginMutation,
                                QueryResult? loginResult) {
                              return Mutation(
                                  options: MutationOptions(
                                      document:
                                          UPDATE_PROFILE_MUTATION_DOCUMENT,
                                      fetchPolicy: FetchPolicy.noCache),
                                  builder: (
                                    RunMutation runUpdateMutation,
                                    QueryResult? updateResult,
                                  ) {
                                    return Stepper(
                                        currentStep: _currentStep,
                                        controlsBuilder: (context, details) {
                                          return Padding(
                                            padding:
                                                const EdgeInsets.only(top: 16),
                                            child: Row(
                                              children: [
                                                ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical: 4,
                                                                    horizontal:
                                                                        12)),
                                                    onPressed:
                                                        details.onStepContinue,
                                                    child:
                                                        const Text("Continue")),
                                                const SizedBox(width: 8),
                                                OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical: 4,
                                                                    horizontal:
                                                                        12)),
                                                    onPressed:
                                                        details.onStepCancel,
                                                    child: const Text("Cancel"))
                                              ],
                                            ),
                                          );
                                        },
                                        onStepTapped: (index) {
                                          if (_currentStep < index ||
                                              index == 1) {
                                            return;
                                          }
                                          setState(() {
                                            _currentStep = index;
                                          });
                                        },
                                        onStepContinue: () async {
                                          switch (_currentStep) {
                                            case 0:
                                              if (loginTermsAndConditionsUrl
                                                      .isNotEmpty &&
                                                  !agreedToTerms) {
                                                return;
                                              }
                                              if (phoneNumber.isEmptyOrNull) {
                                                return;
                                              }
                                              if (kIsWeb) {
                                                final authResult =
                                                    await FirebaseAuth.instance
                                                        .signInWithPhoneNumber(
                                                            phoneNumber);
                                                verificationId =
                                                    authResult.verificationId;
                                                setState(() {
                                                  phoneNumberState =
                                                      StepState.complete;
                                                  _currentStep = 1;
                                                  focusNode.requestFocus();
                                                });
                                              } else {
                                                FirebaseAuth.instance
                                                    .verifyPhoneNumber(
                                                        phoneNumber:
                                                            countryCode +
                                                                phoneNumber,
                                                        verificationCompleted:
                                                            (PhoneAuthCredential
                                                                phoneAuthCredential) {
                                                          login(
                                                              phoneAuthCredential,
                                                              runLoginMutation);
                                                        },
                                                        verificationFailed:
                                                            (FirebaseAuthException
                                                                error) {
                                                          final snackBar = SnackBar(
                                                              content: Text(error
                                                                      .message ??
                                                                  S
                                                                      .of(context)
                                                                      .message_unknown_error));
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  snackBar);
                                                        },
                                                        codeSent: (String
                                                                verificationId,
                                                            int?
                                                                forceResendingToken) {
                                                          this.verificationId =
                                                              verificationId;
                                                          setState(() {
                                                            phoneNumberState =
                                                                StepState
                                                                    .complete;
                                                            _currentStep = 1;
                                                          });
                                                        },
                                                        codeAutoRetrievalTimeout:
                                                            (String
                                                                verificationId) {});
                                              }

                                              break;
                                            case 1:
                                              final PhoneAuthCredential
                                                  credential =
                                                  PhoneAuthProvider.credential(
                                                      verificationId:
                                                          verificationId,
                                                      smsCode: smsCode);
                                              login(
                                                  credential, runLoginMutation);

                                              break;

                                            case 2:
                                              final input = UpdateDriverInput(
                                                      gender: driver.gender)
                                                  .toJson();
                                              await runUpdateMutation({
                                                "input": {
                                                  "firstName": driver.firstName,
                                                  "lastName": driver.lastName,
                                                  "email": driver.email,
                                                  "certificateNumber":
                                                      driver.certificateNumber,
                                                  "gender": input["gender"],
                                                  "address": driver.address
                                                }
                                              }).networkResult;
                                              refetch!();
                                              break;

                                            case 3:
                                              await runUpdateMutation({
                                                "input": {
                                                  "carProductionYear":
                                                      driver.carProductionYear,
                                                  "carPlate": driver.carPlate,
                                                  "carColorId":
                                                      driver.carColorId,
                                                  "carModelId":
                                                      driver.carModelId
                                                }
                                              }).networkResult;
                                              refetch!();
                                              break;

                                            case 4:
                                              await runUpdateMutation({
                                                "input": {
                                                  "bankName": driver.bankName,
                                                  "bankSwift": driver.bankSwift,
                                                  "bankRoutingNumber":
                                                      driver.bankRoutingNumber,
                                                  "accountNumber":
                                                      driver.accountNumber
                                                }
                                              }).networkResult;
                                              refetch!();
                                              break;

                                            case 5:
                                              final inp =
                                                  SetDocumentsOnDriverArguments(
                                                      driverId: driver.id,
                                                      relationIds: driver
                                                          .documents
                                                          .map((e) => e.id)
                                                          .toList());
                                              await runSetDocumentsMutation(
                                                      inp.toJson())
                                                  .networkResult;
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (context) => AlertDialog(
                                                            title: Text(demoMode
                                                                ? S
                                                                    .of(context)
                                                                    .title_important
                                                                : S
                                                                    .of(context)
                                                                    .title_success),
                                                            content: Text(demoMode
                                                                ? S
                                                                    .of(context)
                                                                    .driver_registration_approved_demo_mode
                                                                : S
                                                                    .of(context)
                                                                    .driver_register_profile_submitted_message),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () {
                                                                  int count = 0;
                                                                  Navigator.popUntil(
                                                                      context,
                                                                      (route) {
                                                                    return count++ ==
                                                                        2;
                                                                  });
                                                                },
                                                                child: Text(S
                                                                    .of(context)
                                                                    .action_ok),
                                                              )
                                                            ],
                                                          ));
                                              break;

                                            default:
                                          }
                                        },
                                        steps: <Step>[
                                          Step(
                                              state: phoneNumberState,
                                              title: Text(
                                                  S.of(context).cell_number),
                                              content: Column(
                                                children: [
                                                  Row(children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: CustomTheme
                                                              .neutralColors
                                                              .shade200,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10)),
                                                      child: CountryCodePicker(
                                                        boxDecoration: BoxDecoration(
                                                            color: CustomTheme
                                                                .neutralColors
                                                                .shade100,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        initialSelection:
                                                            countryCode,
                                                        onChanged: (value) =>
                                                            countryCode = value
                                                                    .dialCode ??
                                                                countryCode,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Flexible(
                                                      child: TextFormField(
                                                        initialValue:
                                                            phoneNumber,
                                                        onChanged: (value) =>
                                                            phoneNumber = value,
                                                        keyboardType:
                                                            TextInputType.phone,
                                                        inputFormatters: <
                                                            TextInputFormatter>[
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          labelText: S
                                                              .of(context)
                                                              .cell_number,
                                                        ),
                                                        validator:
                                                            (String? value) {
                                                          if (value == null ||
                                                              value.isEmpty) {
                                                            return S
                                                                .of(context)
                                                                .phone_number_empty;
                                                          } else {
                                                            return null;
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ]),
                                                  if (loginTermsAndConditionsUrl
                                                      .isNotEmpty)
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                            value:
                                                                agreedToTerms,
                                                            onChanged: (value) =>
                                                                setState(() =>
                                                                    agreedToTerms =
                                                                        value ??
                                                                            false)),
                                                        Flexible(
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                const TextSpan(
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black),
                                                                    text:
                                                                        "I have read and agree with "),
                                                                TextSpan(
                                                                    style: const TextStyle(
                                                                        color: Colors
                                                                            .blue),
                                                                    text:
                                                                        "Terms & Conditions",
                                                                    recognizer:
                                                                        TapGestureRecognizer()
                                                                          ..onTap =
                                                                              () {
                                                                            launchUrl(Uri.parse(loginTermsAndConditionsUrl));
                                                                          })
                                                              ])),
                                                        ),
                                                      ],
                                                    ).pOnly(top: 8),
                                                ],
                                              )),
                                          Step(
                                              title: Text(S
                                                  .of(context)
                                                  .driver_registration_step_verify_number_title),
                                              state: verifyState,
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  if (Platform.isAndroid ||
                                                      Platform.isIOS)
                                                    PinFieldAutoFill(
                                                      currentCode: smsCode,
                                                      focusNode: focusNode,
                                                      enableInteractiveSelection:
                                                          true,
                                                      decoration:
                                                          BoxTightDecoration(
                                                        strokeColor: CustomTheme
                                                            .neutralColors
                                                            .shade500,
                                                        bgColorBuilder:
                                                            PinListenColorBuilder(
                                                          CustomTheme
                                                              .neutralColors
                                                              .shade300,
                                                          Colors.transparent,
                                                        ),
                                                      ),
                                                      onCodeChanged: (value) =>
                                                          smsCode = value ?? "",
                                                    )
                                                  else
                                                    TextFormField(
                                                      onChanged: (value) =>
                                                          smsCode = value,
                                                      decoration: InputDecoration(
                                                          labelText: S
                                                              .of(context)
                                                              .driver_register_verification_code_textfield_hint),
                                                    ),
                                                ],
                                              )),
                                          Step(
                                              title: Text(S
                                                  .of(context)
                                                  .driver_register_contact_details_title),
                                              state: contactState,
                                              content: Form(
                                                key: _formKey,
                                                autovalidateMode:
                                                    AutovalidateMode.always,
                                                child: Column(children: [
                                                  Row(
                                                    children: [
                                                      Flexible(
                                                        child: TextFormField(
                                                          initialValue:
                                                              driver.firstName,
                                                          onChanged: (value) =>
                                                              driver.firstName =
                                                                  value,
                                                          validator: (value) {
                                                            if (value
                                                                .isEmptyOrNull) {
                                                              return S
                                                                  .of(context)
                                                                  .form_required_field_error;
                                                            } else {
                                                              return null;
                                                            }
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                                  isDense: true,
                                                                  labelText: S
                                                                      .of(context)
                                                                      .firstname),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Flexible(
                                                        child: TextFormField(
                                                          initialValue:
                                                              driver.lastName,
                                                          onChanged: (value) =>
                                                              driver.lastName =
                                                                  value,
                                                          validator: (value) {
                                                            if (value
                                                                .isEmptyOrNull) {
                                                              return S
                                                                  .of(context)
                                                                  .form_required_field_error;
                                                            } else {
                                                              return null;
                                                            }
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                                  isDense: true,
                                                                  labelText: S
                                                                      .of(context)
                                                                      .lastname),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const SizedBox(height: 8),
                                                  TextFormField(
                                                    initialValue: driver.email,
                                                    onChanged: (value) =>
                                                        driver.email = value,
                                                    decoration: InputDecoration(
                                                        isDense: true,
                                                        labelText: S
                                                            .of(context)
                                                            .email),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  TextFormField(
                                                    initialValue: driver
                                                        .certificateNumber,
                                                    onChanged: (value) => driver
                                                            .certificateNumber =
                                                        value,
                                                    decoration: InputDecoration(
                                                        isDense: true,
                                                        labelText: S
                                                            .of(context)
                                                            .certificate_number),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  DropdownButtonFormField<
                                                      Gender>(
                                                    value: driver.gender,
                                                    decoration: InputDecoration(
                                                        isDense: true,
                                                        labelText: S
                                                            .of(context)
                                                            .gender),
                                                    items: <
                                                        DropdownMenuItem<
                                                            Gender>>[
                                                      DropdownMenuItem(
                                                        value: Gender.male,
                                                        child: Text(S
                                                            .of(context)
                                                            .gender_male),
                                                      ),
                                                      DropdownMenuItem(
                                                          value: Gender.female,
                                                          child: Text(S
                                                              .of(context)
                                                              .gender_female))
                                                    ],
                                                    onChanged: (Gender? value) {
                                                      driver.gender = value;
                                                    },
                                                  ),
                                                  const SizedBox(height: 8),
                                                  TextFormField(
                                                    initialValue:
                                                        driver.address,
                                                    onChanged: (value) {
                                                      driver.address = value;
                                                    },
                                                    validator: (value) {
                                                      if (value.isEmptyOrNull) {
                                                        return S
                                                            .of(context)
                                                            .form_required_field_error;
                                                      } else {
                                                        return null;
                                                      }
                                                    },
                                                    decoration: InputDecoration(
                                                        isDense: true,
                                                        labelText: S
                                                            .of(context)
                                                            .address),
                                                  ),
                                                ]),
                                              )),
                                          Step(
                                              title: Text(S
                                                  .of(context)
                                                  .driver_register_ride_details_step_title),
                                              state: rideState,
                                              content: Form(
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  key: _rideDetailsFormKey,
                                                  child: Column(children: [
                                                    Row(
                                                      children: [
                                                        Flexible(
                                                          child: TextFormField(
                                                            initialValue:
                                                                driver.carPlate,
                                                            onChanged: (value) =>
                                                                driver.carPlate =
                                                                    value,
                                                            validator: (value) {
                                                              if (value
                                                                  .isEmptyOrNull) {
                                                                return S
                                                                    .of(context)
                                                                    .form_required_field_error;
                                                              }
                                                              return null;
                                                            },
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                labelText: S
                                                                    .of(context)
                                                                    .plate_number),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 8),
                                                        Flexible(
                                                          child: TextFormField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            initialValue: driver
                                                                    .carProductionYear
                                                                    ?.toString() ??
                                                                "",
                                                            onChanged: (value) {
                                                              driver.carProductionYear =
                                                                  int.tryParse(
                                                                      value);
                                                            },
                                                            inputFormatters: <
                                                                TextInputFormatter>[
                                                              FilteringTextInputFormatter
                                                                  .digitsOnly
                                                            ],
                                                            decoration: InputDecoration(
                                                                isDense: true,
                                                                labelText: S
                                                                    .of(context)
                                                                    .car_production_year),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(height: 8),
                                                    DropdownButtonFormField<
                                                        String>(
                                                      value: driver.carModelId,
                                                      decoration:
                                                          InputDecoration(
                                                              isDense: true,
                                                              labelText: S
                                                                  .of(context)
                                                                  .car_model),
                                                      items: models
                                                          .map((e) =>
                                                              DropdownMenuItem(
                                                                  value: e.id,
                                                                  child: Text(
                                                                      e.name)))
                                                          .toList(),
                                                      onChanged: (String? id) =>
                                                          driver.carModelId =
                                                              id,
                                                    ),
                                                    const SizedBox(height: 8),
                                                    DropdownButtonFormField<
                                                        String>(
                                                      value: driver.carModelId,
                                                      decoration:
                                                          InputDecoration(
                                                              isDense: true,
                                                              labelText: S
                                                                  .of(context)
                                                                  .car_color),
                                                      items: colors
                                                          .map((e) =>
                                                              DropdownMenuItem(
                                                                  value: e.id,
                                                                  child: Text(
                                                                      e.name)))
                                                          .toList(),
                                                      onChanged: (String? id) =>
                                                          driver.carColorId =
                                                              id,
                                                    )
                                                  ]))),
                                          Step(
                                              title: Text(S
                                                  .of(context)
                                                  .driver_register_step_payout_details_title),
                                              state: payoutState,
                                              content: Form(
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Column(
                                                    children: [
                                                      TextFormField(
                                                        initialValue:
                                                            driver.bankName,
                                                        decoration:
                                                            InputDecoration(
                                                                isDense: true,
                                                                labelText: S
                                                                    .of(context)
                                                                    .bank_name),
                                                        onChanged: (value) =>
                                                            driver.bankName =
                                                                value,
                                                      ),
                                                      const SizedBox(height: 8),
                                                      TextFormField(
                                                        initialValue: driver
                                                            .accountNumber,
                                                        decoration: InputDecoration(
                                                            isDense: true,
                                                            labelText: S
                                                                .of(context)
                                                                .account_number),
                                                        onChanged: (value) =>
                                                            driver.accountNumber =
                                                                value,
                                                      ),
                                                      const SizedBox(height: 8),
                                                      TextFormField(
                                                        initialValue: driver
                                                            .accountNumber,
                                                        decoration:
                                                            InputDecoration(
                                                                isDense: true,
                                                                labelText: S
                                                                    .of(context)
                                                                    .bank_swift),
                                                        onChanged: (value) =>
                                                            driver.bankSwift =
                                                                value,
                                                      ),
                                                      const SizedBox(height: 8),
                                                      TextFormField(
                                                        initialValue: driver
                                                            .bankRoutingNumber,
                                                        decoration: InputDecoration(
                                                            isDense: true,
                                                            labelText: S
                                                                .of(context)
                                                                .bankRoutingNumber),
                                                        validator: (value) {
                                                          if (value
                                                              .isEmptyOrNull) {
                                                            return S
                                                                .of(context)
                                                                .form_required_field_error;
                                                          } else {
                                                            return null;
                                                          }
                                                        },
                                                        onChanged: (value) =>
                                                            driver.bankRoutingNumber =
                                                                value,
                                                      ),
                                                    ],
                                                  ))),
                                          Step(
                                              title: Text(S
                                                  .of(context)
                                                  .driver_register_step_documents_title),
                                              state: documentsState,
                                              content: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(S
                                                          .of(context)
                                                          .driver_register_step_documents_heading)
                                                      .pOnly(bottom: 8),
                                                  Text(S
                                                          .of(context)
                                                          .driver_register_document_first)
                                                      .pOnly(bottom: 8),
                                                  Text(S
                                                          .of(context)
                                                          .driver_register_document_second)
                                                      .pOnly(bottom: 8),
                                                  Text(S
                                                          .of(context)
                                                          .driver_register_document_third)
                                                      .pOnly(bottom: 8),
                                                  GridView.count(
                                                    primary: false,
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing: 5,
                                                    crossAxisSpacing: 5,
                                                    children: driver.documents
                                                        .map(
                                                          (e) => Image.network(
                                                                  serverUrl +
                                                                      e.address)
                                                              .w20(context),
                                                        )
                                                        .toList(),
                                                  ).h(driver.documents.length *
                                                      60),
                                                  ElevatedButton.icon(
                                                      onPressed: () async {
                                                        FilePickerResult?
                                                            result =
                                                            await FilePicker
                                                                .platform
                                                                .pickFiles(
                                                                    type: FileType
                                                                        .image);

                                                        if (result != null &&
                                                            result.files.single
                                                                    .path !=
                                                                null) {
                                                          await uploadFile(
                                                              result
                                                                  .files
                                                                  .single
                                                                  .path!);
                                                          refetch!();
                                                        }
                                                      },
                                                      icon: const Icon(Ionicons
                                                          .cloud_upload),
                                                      label: Text(S
                                                          .of(context)
                                                          .action_upload_document)),
                                                ],
                                              ))
                                        ]);
                                  });
                            }),
                  );
                }),
          ],
        ),
      ),
    ));
  }

  login(PhoneAuthCredential credential, RunMutation mutationCall) async {
    final UserCredential cr =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final String firebaseToken = await cr.user!.getIdToken();
    final args = LoginArguments(firebaseToken: firebaseToken).toJson();
    final netResult = await mutationCall(args).networkResult;
    final loginRes = Login$Mutation.fromJson(netResult!.data!);
    final jwt = loginRes.login.jwtToken;
    Hive.box('user').put('jwt', jwt);
    setState(() {
      verifyState = StepState.complete;
      _currentStep = 2;
    });
  }

  uploadFile(String path) async {
    var postUri = Uri.parse("${serverUrl}upload_document");
    var request = http.MultipartRequest("POST", postUri);
    request.headers['Authorization'] =
        'Bearer ${Hive.box('user').get('jwt').toString()}';
    request.files.add(await http.MultipartFile.fromPath('file', path));
    await request.send();
    // var response = await http.Response.fromStream(streamedResponse);
    // var json = jsonDecode(response.body);
    // setState(() {});
    // json['address'];
  }
}
