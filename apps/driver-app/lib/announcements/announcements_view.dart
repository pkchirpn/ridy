import 'package:client_shared/components/back_button.dart';
import 'package:client_shared/components/empty_state_card_view.dart';
import 'package:client_shared/components/list_shimmer_skeleton.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shimmer/shimmer.dart';

import '../graphql/generated/graphql_api.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

class AnnouncementsView extends StatelessWidget {
  const AnnouncementsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const RidyBackButton(),
            Query(
                options: QueryOptions(document: ANNOUNCEMENTS_QUERY_DOCUMENT),
                builder: (QueryResult result,
                    {Future<QueryResult?> Function()? refetch,
                    FetchMore? fetchMore}) {
                  if (result.isLoading) {
                    return Shimmer.fromColors(
                      baseColor: CustomTheme.neutralColors.shade300,
                      highlightColor: CustomTheme.neutralColors.shade100,
                      enabled: true,
                      child: const ListShimmerSkeleton(),
                    );
                  }
                  final announcements =
                      Announcements$Query.fromJson(result.data!).announcements;
                  if (announcements.isEmpty) {
                    return const EmptyStateCard(
                        title: "No Announcements yet!",
                        description:
                            "We will notify you when new announcements comes.",
                        icon: Ionicons.notifications_off_circle);
                  }
                  return ListView.builder(
                      itemCount: announcements.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('yyyy-MM-dd')
                                      .format(announcements[index].startAt),
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                Text(announcements[index].title),
                              ],
                            ),
                            subtitle: Text(announcements[index].description)
                                .pOnly(top: 6),
                          ).pOnly(bottom: 10, top: 8),
                        );
                      });
                }),
          ],
        ),
      ),
    );
  }
}
