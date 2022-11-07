import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:client_shared/components/sheet_title_view.dart';

class EnterGiftCodeSheetView extends StatelessWidget {
  const EnterGiftCodeSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SheetTitleView(
              title: "Enter Gift Code",
              closeAction: () => Navigator.pop(context),
            ),
            Text("Enter your gift card code",
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(Ionicons.gift),
                  hintText: "Enter gift card code"),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Apply"))),
              ],
            )
          ],
        ));
  }
}
