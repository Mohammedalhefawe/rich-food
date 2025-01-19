import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../modules/sales_man/features/customers/add_customer/add_customer_controller.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';

class SelectTypeToAddCustomerDialog extends StatefulWidget {
  const SelectTypeToAddCustomerDialog({
    super.key,
  });

  @override
  State<SelectTypeToAddCustomerDialog> createState() =>
      _SelectTypeToAddCustomerDialogState();
}

class _SelectTypeToAddCustomerDialogState
    extends State<SelectTypeToAddCustomerDialog> {
  int isRetailer = 2;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddCustomerController>(
        builder: (AddCustomerController controller) {
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
