import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/customers/edit_customer/edit_customer_controller.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';

class SelectTypeToEditCustomerDialog extends StatefulWidget {
  const SelectTypeToEditCustomerDialog({
    super.key,
  });

  @override
  State<SelectTypeToEditCustomerDialog> createState() =>
      _SelectTypeToEditCustomerDialogState();
}

class _SelectTypeToEditCustomerDialogState
    extends State<SelectTypeToEditCustomerDialog> {
  int isRetailer = 2;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditCustomerController>(
        builder: (EditCustomerController controller) {
      return AlertDialog(
        backgroundColor: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(
          "اختر النوع",
          style: MyDecorations.textStyle500(primary, 16),
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('جملة'),
              onTap: () {
                setState(() {
                  isRetailer = 1;
                  controller.type = "جملة";
                  Get.back();
                });
              },
              titleTextStyle: MyDecorations.textStyle400(
                primary,
                14,
              ),
              selectedColor: blueTheme,
              selectedTileColor: accent,
              selected: (isRetailer == 1) ? true : false,
              splashColor: accent,
            ),
            const Divider(),
            ListTile(
              title: const Text('مفرق'),
              onTap: () {
                setState(() {
                  isRetailer = 0;
                  controller.type = "مفرق";
                  Get.back();
                });
              },
              titleTextStyle: MyDecorations.textStyle400(
                primary,
                14,
              ),
              selectedColor: blueTheme,
              selectedTileColor: accent,
              selected: (isRetailer == 0) ? true : false,
              splashColor: accent,
            ),
          ],
        ),
      );
    });
  }
}
