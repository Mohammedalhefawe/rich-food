import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/custom_button.dart';

class CustomerViewOrderFooter extends StatelessWidget {
  final String status;
  final VoidCallback onCancel, onEdit, onRevoke;
  const CustomerViewOrderFooter({
    super.key,
    required this.status,
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
