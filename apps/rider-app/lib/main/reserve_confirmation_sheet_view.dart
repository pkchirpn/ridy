import 'package:flutter/material.dart';
import 'package:client_shared/components/sheet_title_view.dart';
import 'package:velocity_x/velocity_x.dart';

class ReserveConfirmationSheetView extends StatelessWidget {
  const ReserveConfirmationSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SheetTitleView(title: "Your ride is reserved."),
          Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                  child: Text(
                "You can check out reserved rides in the menu to see reserve information of this ride.",
                style: Theme.of(context).textTheme.bodyMedium,
              ).pOnly(right: 16)),
              Image.asset(
                "images/booking_confirmed.png",
                width: 200,
                height: 200,
              ).pSymmetric(v: 8)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(8))),
                  onPressed: () =>
                      Navigator.popAndPushNamed(context, 'reserves'),
                  child: const Text("See reserved rides").pSymmetric(v: 8),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Confirm"),
              ))
            ],
          )
        ],
      ),
    );
  }
}
