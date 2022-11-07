import 'dart:io' show Platform;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:ridy/generated/l10n.dart';
import 'package:client_shared/theme/theme.dart';
import '../graphql/generated/graphql_api.graphql.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../main/bloc/jwt_cubit.dart';

class LoginVerificationCodeView extends StatefulWidget {
  final String verificationId;
  const LoginVerificationCodeView({Key? key, required this.verificationId})
      : super(key: key);

  @override
  State<LoginVerificationCodeView> createState() =>
      _LoginVerificationCodeViewState();
}

class _LoginVerificationCodeViewState extends State<LoginVerificationCodeView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String code = "";
  var focusNode = FocusNode();

  @override
  void initState() {
    initCodeListener();
    super.initState();
    focusNode.requestFocus();
  }

  Future<void> initCodeListener() async {
    if (Platform.isIOS) SmsAutoFill().listenForCode;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16),
        child: Mutation(
            options: MutationOptions(
                document:
                    LoginMutation(variables: LoginArguments(firebaseToken: ""))
                        .document),
            builder: (RunMutation runMutation, QueryResult? result) {
              return Form(
                key: _formKey,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SheetTitleView(
                        title: "Enter code",
                        closeAction: () => Navigator.pop(context),
                      ),
                      Text(
                        "Code has been sent to your phone number",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Flexible(
                            child: PinFieldAutoFill(
                              focusNode: focusNode,
                              currentCode: code,
                              enableInteractiveSelection: true,
                              decoration: BoxTightDecoration(
                                strokeColor: CustomTheme.neutralColors.shade500,
                                bgColorBuilder: PinListenColorBuilder(
                                  CustomTheme.neutralColors.shade300,
                                  Colors.transparent,
                                ),
                              ),
                              onCodeChanged: (code) =>
                                  setState(() => this.code = code ?? ""),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 10),
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: (result?.isLoading == true)
                                  ? null
                                  : () {
                                      if (code.length < 6) {
                                        final snackBar = SnackBar(
                                            content: Text(S
                                                .of(context)
                                                .verify_phone_code_empty_message));
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                        return;
                                      }
                                      login(code, runMutation);
                                    },
                              child: Text(
                                S.of(context).action_next,
                                style: const TextStyle(fontSize: 16),
                              ))),
                    ]),
              );
            }));
  }

  void login(String code, RunMutation runMutation) async {
    final PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId, smsCode: code);
    final UserCredential cr =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final String firebaseToken = await cr.user!.getIdToken();
    final QueryResult qe =
        await runMutation({"firebaseToken": firebaseToken}).networkResult!;
    final String jwt = Login$Mutation.fromJson(qe.data!).login.jwtToken;
    final Box box = await Hive.openBox('user');
    box.put("jwt", jwt);
    context.read<JWTCubit>().login(jwt);
    if (!mounted) return;
    Navigator.pop(context);
  }
}
