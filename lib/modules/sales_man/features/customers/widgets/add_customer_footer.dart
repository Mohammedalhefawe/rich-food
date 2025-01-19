import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/customers/add_customer/add_customer_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/custom_button.dart';

class AddCustomerFooter extends StatelessWidget {
  final VoidCallback onTap;
  final Widget? loadingWidget;

  const AddCustomerFooter({
    super.key,
    required this.onTap, this.loadingWidget,
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
          // CustomButton(labelColor: whiteTheme, buttonColor: blueTheme, label: type=="تعديل"?"حفظ":"إضافة زبون", onTap:onTap),

          Center(
            child: InkWell(
              onTap: onTap,
              child: Container(
                  width: 141.w,
                  height: 43.h,
                  decoration: BoxDecoration(
                    color: !Get.find<AddCustomerController>().isLoading
                        ? blueTheme
                        : grey,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Center(
                      child: !Get.find<AddCustomerController>().isLoading
                          ? Text(
                              "إضافة زبون",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: primary, fontSize: 14),
                            )
                          : Text(
                              "جارِ الإضافة.. ",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: whiteTheme, fontSize: 14),
                            ))),
            ),
          ),
          const SizedBox(width: 8),
          CustomButton(
              labelColor: red,
              buttonColor: red.withOpacity(0.25),
              label: "إلغاء",
              onTap: () {
                Get.back();
              }),
        ],
      ),
    );
  }
}
