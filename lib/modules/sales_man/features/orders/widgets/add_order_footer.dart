import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/add_order_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/dialog/confirmation_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_button.dart';

class AddOrderFooter extends StatelessWidget {
  final String totalPrice;
  final String deliveryDateTime;
  final String deliveryDayName;
  final VoidCallback? onCancelPressed;
  final VoidCallback? onConfirmPressed;

  AddOrderFooter({
    super.key,
    required this.totalPrice,
    required this.deliveryDateTime,
    required this.deliveryDayName,
    this.onCancelPressed,
    this.onConfirmPressed,
  });

  final AddOrderController controller = Get.find<AddOrderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 143.h,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: base,
        border: Border.all(
          color: lightGrey,
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
                totalPrice,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: secondary,
                  fontSize: 14.w,
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
                  showDialog(
                    context: context,
                    builder: (context) => ConfirmationDialog(
                      title:
                          'هل تريد تجاهل الطلب الذي قمت بإنشائه؟\nسيتم فقدان جميع المعلومات المدخلة.',
                      content: '',
                      confirmationText: 'تجاهل',
                      onConfirm: () {
                        if (onCancelPressed != null) {
                          onCancelPressed!();
                        }
                        Get.back();
                        Get.back();
                      },
                    ),
                  );
                },
                labelColor: red,
                buttonColor: red.withOpacity(0.25),
                label: "إلغاء",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
