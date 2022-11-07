import 'package:client_shared/components/ride_option_item.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:intl/intl.dart';
import 'package:ridy/graphql/generated/graphql_api.dart';
import 'package:share_plus/share_plus.dart';

class RideSafetySheetView extends StatelessWidget {
  final CurrentOrderMixin order;
  const RideSafetySheetView({required this.order, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(
              title: "Ride Safety",
              closeAction: () => Navigator.pop(context),
            ),
            RideOptionItem(
                icon: Ionicons.shield,
                text: "Share trip information",
                onPressed: () {
                  var text =
                      'I am on my way to ${order.addresses.last} from ${order.addresses.first}.';
                  if (order.driver != null) {
                    text +=
                        ' My driver name is ${order.driver!.firstName} ${order.driver!.lastName} and his mobile number is +${order.driver!.mobileNumber}.';
                  }
                  if (order.startTimestamp != null) {
                    text +=
                        ' Trip has started on ${DateFormat('HH:mm a').format(order.startTimestamp!)} and i expect the trip to take around ${(order.durationBest / 60) + order.waitMinutes} minutes';
                  } else {
                    text +=
                        " I expect the trip itself take around ${(order.durationBest / 60) + order.waitMinutes} minutes once i get on the driver's car.";
                  }
                  Share.share(text);
                  //launchUrl(Uri("sms:${order.addresses.skip(1)}"));
                }),
          ],
        ));
  }
}
