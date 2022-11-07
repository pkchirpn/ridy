import 'package:client_shared/components/user_avatar_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:client_shared/config.dart';
import 'package:ridy/config.dart';
import 'package:ridy/graphql/generated/graphql_api.dart';
import 'package:velocity_x/velocity_x.dart';
import 'generated/l10n.dart';

class DrawerView extends StatelessWidget {
  final BasicProfileMixin? driver;

  const DrawerView({required this.driver, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(children: [
        const SizedBox(
          height: 48,
        ),
        Row(
          children: [
            UserAvatarView(
              urlPrefix: serverUrl,
              url: driver?.media?.address,
              cornerRadius: 10,
              size: 50,
              backgroundColor: CustomTheme.primaryColors.shade300,
            ),
            Text(
              driver?.firstName != null || driver?.lastName != null
                  ? "${driver?.firstName ?? " "} ${driver?.lastName ?? " "}"
                  : "-",
              style: Theme.of(context).textTheme.titleLarge,
            ).pOnly(left: 16),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.bar_chart),
          minLeadingWidth: 20.0,
          title: Text(
            "Earnings",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'earnings');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.notifications),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_announcements,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'announcements');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.wallet),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_wallet,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'wallet');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.time),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_trip_history,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'trip-history');
          },
        ),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.information),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_about,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () async {
            PackageInfo packageInfo = await PackageInfo.fromPlatform();
            showAboutDialog(
                context: context,
                applicationIcon: Image.asset(
                  'images/logo.png',
                  width: 100,
                  height: 100,
                ),
                applicationVersion:
                    "${packageInfo.version} (Build ${packageInfo.buildNumber})",
                applicationName: packageInfo.appName,
                applicationLegalese:
                    S.of(context).copyright_notice(companyName));
          },
        ),
        const Spacer(),
        ListTile(
          iconColor: CustomTheme.primaryColors.shade800,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          leading: const Icon(Ionicons.log_out),
          minLeadingWidth: 20.0,
          title: Text(
            S.of(context).menu_logout,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          onTap: () async {
            final logoutDialogResult = await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Logout"),
                      content: Text(
                          "Are you sure you want to log out of the application?"),
                      actions: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, 2);
                                    },
                                    child: Text("Delete Account",
                                        style: TextStyle(
                                            color: Color(0xffb20d0e))))),
                            Spacer(),
                            TextButton(
                                onPressed: () async {
                                  Navigator.pop(context, 1);
                                  await Hive.box('user').delete('jwt');
                                },
                                child: Text("Yes")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context, 0);
                                },
                                child: Text("Cancel"))
                          ],
                        )
                      ],
                    ));
            if (logoutDialogResult != 2) return;
            showDialog(
                context: context,
                builder: (BuildContext ncontext) {
                  return AlertDialog(
                    title: Text("Account deletion"),
                    content: Text(
                        "Are you sure you want to delete your account? You can login again within 30 days to restore the account. After this period your data gets completely removed including all your remaining credits."),
                    actions: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Mutation(
                                options: MutationOptions(
                                    document: DELETE_USER_MUTATION_DOCUMENT),
                                builder: (RunMutation runMutation,
                                    QueryResult? result) {
                                  return TextButton(
                                      onPressed: () async {
                                        Navigator.pop(context);
                                        await runMutation({}).networkResult;
                                        await Hive.box('user').delete('jwt');
                                      },
                                      child: const Text(
                                        "Delete Account",
                                        textAlign: TextAlign.end,
                                        style:
                                            TextStyle(color: Color(0xffb20d0e)),
                                      ));
                                }),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "Cancel",
                                textAlign: TextAlign.end,
                              ))
                        ],
                      ),
                    ],
                  );
                });

            //exit(1);
          },
        )
      ]),
    );
  }
}
