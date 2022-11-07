import 'package:client_shared/components/ridy_sheet_view.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:client_shared/components/user_avatar_view.dart';
import 'package:client_shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ridy/config.dart';
import 'package:ridy/graphql/generated/graphql_api.dart';
import 'package:velocity_x/velocity_x.dart';

import 'generated/l10n.dart';

class OrderInvoiceView extends StatelessWidget {
  final CurrentOrderMixin order;
  final Function() onCashPaymentReceived;

  const OrderInvoiceView(
      {required this.order, required this.onCashPaymentReceived, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RidySheetView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SheetTitleView(title: "Payment Info"),
          Text("Waiting for rider payment",
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 4),
          Text(
            "You can also receive cash instead of online payment if you and the writer are both willing to.",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 8),
          Center(
            child: UserAvatarView(
                urlPrefix: serverUrl,
                url: order.rider.media?.address,
                cornerRadius: 12,
                size: 60),
          ),
          const SizedBox(height: 8),
          Center(
              child: Text(
                  "${order.rider.firstName ?? ""} ${order.rider.lastName ?? ""}",
                  style: Theme.of(context).textTheme.titleMedium)),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: CustomTheme.neutralColors.shade100,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(order.service.name,
                        style: Theme.of(context).textTheme.bodySmall),
                    const Spacer(),
                    Text(
                        NumberFormat.simpleCurrency(name: order.currency)
                            .format(order.costAfterCoupon),
                        style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
                // TODO: Show coupon discount
                // if (order.costAfterCoupon != order.costBest) const Divider(),
                // if (order.costAfterCoupon != order.costBest)
                //   Row(children: [
                //     Text("Coupon discount",
                //         style: Theme.of(context).textTheme.bodySmall),
                //     const Spacer(),
                //     Text(
                //         NumberFormat.simpleCurrency(name: order.currency)
                //             .format(order.costAfterCoupon - order.costBest),
                //         style: Theme.of(context).textTheme.bodySmall)
                //   ]),
                const Divider(),
                Row(
                  children: [
                    Text("Tip", style: Theme.of(context).textTheme.bodySmall),
                    const Spacer(),
                    Text(
                        "+${NumberFormat.simpleCurrency(name: order.currency).format(order.tipAmount)}",
                        style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
                const Divider(
                  thickness: 1.5,
                ),
                Row(
                  children: [
                    Text("Subtotal",
                        style: Theme.of(context).textTheme.headlineMedium),
                    const Spacer(),
                    Text(
                        NumberFormat.simpleCurrency(name: order.currency)
                            .format(order.costAfterCoupon + order.tipAmount),
                        style: Theme.of(context).textTheme.headlineMedium)
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: onCashPaymentReceived,
                child: Text(
                  S.of(context).order_status_action_received_cash,
                  style: Theme.of(context).textTheme.titleMedium,
                )).px4(),
          )
        ],
      ),
    );
  }
}
