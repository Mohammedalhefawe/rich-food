import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_button.dart';

class ViewOrderFooter extends StatelessWidget {
  final String totalPrice;
  final String deliveryDateTime, dayName, status;
  final VoidCallback onCancel, onEdit, onRevoke;
  const ViewOrderFooter({
    super.key,
    required this.totalPrice,
    required this.deliveryDateTime,
    required this.status,
    required this.dayName,
    required this.onCancel,
    required this.onEdit,
    required this.onRevoke,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      // height: isDelivered? 85.h: 143.h,
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
                  fontSize: 14,
                  fontFamily: MyDecorations.myFont,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "$totalPrice ليرة",
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
                    "$dayName ",
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
          if (status == 'accepted') ...[
            SizedBox(height: 24.h),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  onTap: onEdit,
                  labelColor: white,
                  buttonColor: blueTheme,
                  label: "تعديل الطلب",
                ),
                SizedBox(width: 12.w),
                CustomButton(
                  onTap: onCancel,
                  labelColor: red,
                  buttonColor: red.withOpacity(0.25),
                  label: "إلغاء الطلب",
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
