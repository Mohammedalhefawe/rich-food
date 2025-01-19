import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/dialog/cancel_customer_dialog.dart';
import '../../../../../shared/dialog/confirmation_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_button.dart';
import '../edit_cart_controller.dart';

class EditCartFooter extends StatelessWidget {
  final String totalPrice;
  final String deliveryDateTime;
  final String deliveryDayName;
  final VoidCallback? onCancelPressed;
  final VoidCallback? onConfirmPressed;

  EditCartFooter({
    super.key,
    required this.totalPrice,
    required this.deliveryDateTime,
    required this.deliveryDayName,
    this.onCancelPressed,
    this.onConfirmPressed,
  });

  final EditCartController controller = Get.find<EditCartController>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async {
        if (!controller.isLoading) {
          // Show the dialog and return false to prevent the pop action
          showDialog(
            context: context,
            builder: (context) => CancelCustomerDialog(
              title: 'إلغاء تعديل',
              content: 'هل تريد إلغاء تعديل الطلب؟سيتم التراجع عن جميع التعديلات التي قمت بها. ',
              confirmationText: 'تأكيد',
              onConfirm: () {
                if (onCancelPressed != null) {
                  onCancelPressed!();
                }
                Get.back(); // Close the confirmation dialog
                Get.back(); // Close the current screen
              },
            ),
          );
          // Return false to prevent the pop action
          return Future.value(false);
        } else {
          // If loading, return true to allow the pop action
          return Future.value(true);
        }
      },
      child: Container(
        width: 360.w,
        height: 143.h,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: base,
          border: Border.all(
            color: base,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'السعر الاجمالي:',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: primary,
                    fontSize: 14.w,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  totalPrice +" ل.س ",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: secondary,
                    fontSize: 14,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'موعد التسليم:',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: primary,
                    fontSize: 14,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$deliveryDayName ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: secondary,
                        fontSize: 14,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      deliveryDateTime,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: secondary,
                        fontSize: 14,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                controller.isLoading
                    ? CustomButton(
                        onTap: () {},
                        labelColor: white,
                        buttonColor: grey,
                        label: "جارِ الحفظ.. ",
                      )
                    : CustomButton(
                        onTap: onConfirmPressed!,
                        // onTap: onConfirmPressed!,
                        labelColor: white,
                        buttonColor: blueTheme,
                        label: "حفظ",
                      ),
                SizedBox(width: 12.w),
                CustomButton(
                  onTap: () {
                    if (!controller.isLoading) {
                      showDialog(
                        context: context,
                        builder: (context) => CancelCustomerDialog(
                          title: 'إلغاء تعديل',
                          content: 'هل تريد إلغاء تعديل الطلب؟سيتم التراجع عن جميع التعديلات التي قمت بها.',
                          confirmationText: 'تأكيد',
                          onConfirm: () {
                            if (onCancelPressed != null) {
                              onCancelPressed!();
                            }
                            Get.back();
                            Get.back();
                          },
                        ),
                      );
                    }
                  },
                  labelColor: (!controller.isLoading) ? red : grey,
                  buttonColor: red.withOpacity(0.25),
                  label: "إلغاء التعديل",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
