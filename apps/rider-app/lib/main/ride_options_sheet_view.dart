import 'package:client_shared/components/ride_option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/sheet_title_view.dart';

class RideOptionsSheetView extends StatelessWidget {
  const RideOptionsSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(
              title: "Ride Options",
              closeAction: () => Navigator.pop(context),
            ),
            RideOptionItem(
                icon: Ionicons.time,
                text: "Wait time",
                onPressed: () =>
                    Navigator.pop(context, RideOptionsResult.waitTime)),
            const SizedBox(height: 8),
            RideOptionItem(
                icon: Ionicons.pricetag,
                text: "Coupon Code",
                onPressed: () =>
                    Navigator.pop(context, RideOptionsResult.couponCode)),
            const SizedBox(height: 8),
            RideOptionItem(
                icon: Ionicons.gift,
                text: "Gift Card Code",
                onPressed: () =>
                    Navigator.pop(context, RideOptionsResult.giftCode)),
            const SizedBox(height: 8),
            RideOptionItem(
                icon: Ionicons.close,
                text: "Cancel Ride",
                onPressed: () =>
                    Navigator.pop(context, RideOptionsResult.cancel)),
          ],
        ));
  }
}

enum RideOptionsResult { none, waitTime, couponCode, giftCode, cancel }
