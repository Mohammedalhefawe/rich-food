import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/customers/edit_customer/edit_customer_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/dialog/cancel_customer_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/custom_button.dart';

class EditCustomerFooter extends StatelessWidget {
  final VoidCallback onTap;

  const EditCustomerFooter({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 75.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: base,
        border: Border.all(
          color: base,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: InkWell(
              onTap: onTap,
              child: Container(
                  width: 141.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    color: !Get.find<EditCustomerController>().isLoading
                        ? blueTheme
                        : grey,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Center(
                      child: !Get.find<EditCustomerController>().isLoading
                          ? Text(
                        "حفظ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: primary, fontSize: 14),
                      )
                          : Text(
                        "جارِ الحفظ.. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: primary, fontSize: 14),
                      ))),
            ),
          ),
          const SizedBox(width: 8),
          CustomButton(
              labelColor: red,
              buttonColor: red.withOpacity(0.25),
              label: "إلغاء التعديل",
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CancelCustomerDialog(
                      content:
                      "هل تريد تجاهل التعديل الذي قمت به ؟ سيتم فقدان جميع المعلومات المدخلة.",
                      confirmationText: "تجاهل",
                      onConfirm: () {
                        Get.back();
                        Get.back();
                      },
                    );
                  },
                );
              }),
        ],
      ),
    );
  }
}
