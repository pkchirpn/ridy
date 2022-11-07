import 'package:client_shared/theme/theme.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'graphql/generated/graphql_api.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UnregisteredDriverMessagesView extends StatelessWidget {
  final BasicProfileMixin? driver;
  const UnregisteredDriverMessagesView({required this.driver, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, packageInfo) => Flex(
        direction: Axis.vertical,
        children: [
          Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: CustomTheme.primaryColors.shade200,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(70))),
                child: SafeArea(
                  minimum: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/logo.png",
                              width: 32,
                              height: 32,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            packageInfo.data?.appName ?? "",
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const Spacer(),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        'images/registration-illustration.png',
                        width: 300,
                        height: 300,
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              )),
          Flexible(
              child: Stack(
            children: [
              Positioned(
                left: -70,
                right: -70,
                top: 30,
                child: Image.asset(
                  'images/dotted-lines-1.png',
                ),
              ),
              if (driver == null)
                const Center(
                  child: NotLoggedInUnregisteredView(),
                ),
              if (driver?.status == DriverStatus.waitingDocuments)
                const Center(
                  child: WaitingToCompleteSubmissionUnregisteredView(),
                ),
              if (driver?.status == DriverStatus.pendingApproval)
                const Center(child: RegistrationSubmittedUnregisteredView()),
              if (driver?.status == DriverStatus.softReject)
                Center(
                  child: SoftRejectUnregisteredView(
                      rejectionNote: driver?.softRejectionNote),
                ),
              if (driver?.status == DriverStatus.hardReject)
                const Center(
                  child: HardRejectUnregisteredView(),
                )
            ],
          ))
        ],
      ),
    );
    // switch (driver.status) {
    //   case DriverStatus.waitingDocuments:
    //     return const Center(
    //       child: Text("Complete Registration"),
    //     );
    //   case DriverStatus.blocked:
    //     return Center(
    //       child: const Text(
    //         "This account is blocked from providing services.",
    //         textAlign: TextAlign.center,
    //       ).p12(),
    //     );
    //   case DriverStatus.pendingApproval:
    //     return Center(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           const Text(
    //             "Your registration form was submitted and it is waiting for review.",
    //             textAlign: TextAlign.center,
    //           ).pOnly(left: 12, right: 12),
    //           const Text(
    //             "You can update your submission in case needed.",
    //             textAlign: TextAlign.center,
    //           ).pOnly(top: 4, bottom: 12, left: 12, right: 12),
    //           ElevatedButton(
    //               onPressed: () => Navigator.pushNamed(context, "register"),
    //               child: const Text("Update Profile"))
    //         ],
    //       ),
    //     );
    //   case DriverStatus.softReject:
    //     return Center(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           const Text(
    //               "We found that there is an issue with your registration form. You can update your submission form and resubmit for review."),
    //           Text(driver.softRejectionNote ?? "No Description Provided"),
    //           ElevatedButton(
    //               onPressed: () => Navigator.pushNamed(context, "register"),
    //               child: const Text("Update Profile"))
    //         ],
    //       ),
    //     );
    //   case DriverStatus.hardReject:
    //     return Center(
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: [
    //           const Text(
    //             "We found issues with your submission which are not suitable for our providers. Feel free to contact in case needed.",
    //             textAlign: TextAlign.center,
    //           ).p12(),
    //           Text(driver.softRejectionNote ?? "No Description Provided.")
    //         ],
    //       ),
    //     );
    //   default:
    //     return const Text("Unknown Unregistrered state");
    // }
  }
}

class NotLoggedInUnregisteredView extends StatelessWidget {
  const NotLoggedInUnregisteredView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Text(
          "Welcome !",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 300,
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text("Login / Sign Up")),
        )
      ],
    );
  }
}

class WaitingToCompleteSubmissionUnregisteredView extends StatelessWidget {
  const WaitingToCompleteSubmissionUnregisteredView({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: CustomTheme.neutralColors.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "Welcome !",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Please complete your \nregistration submission",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: CustomTheme.neutralColors.shade600),
              )
            ],
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 300,
          child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text("Complete registration")),
        )
      ],
    );
  }
}

class RegistrationSubmittedUnregisteredView extends StatelessWidget {
  const RegistrationSubmittedUnregisteredView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: CustomTheme.neutralColors.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "Welcome !",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Text(
                "Your submission is under review,\nThanks for patience.",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: CustomTheme.neutralColors.shade600),
              )
            ],
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 300,
          child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text("Edit submission")),
        )
      ],
    );
  }
}

class HardRejectUnregisteredView extends StatelessWidget {
  const HardRejectUnregisteredView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: CustomTheme.neutralColors.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "Welcome !",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Ionicons.close_circle,
                    color: Color(0xffb20d0e),
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Your Submission is fully rejected!",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: const Color(0xffb20d0e)),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SoftRejectUnregisteredView extends StatelessWidget {
  final String? rejectionNote;
  const SoftRejectUnregisteredView({required this.rejectionNote, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: CustomTheme.neutralColors.shade200,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "Welcome !",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Ionicons.close_circle,
                    color: Color(0xffb20d0e),
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "There is a problem with the submission",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: const Color(0xffb20d0e)),
                  ),
                ],
              ),
              if (!rejectionNote.isEmptyOrNull)
                Text(
                  rejectionNote ?? "",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: const Color(0xffb20d0e)),
                )
            ],
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 300,
          child: OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text(
                "Edit submission",
                style: TextStyle(color: Color(0xffb20d0e)),
              )),
        )
      ],
    );
  }
}
