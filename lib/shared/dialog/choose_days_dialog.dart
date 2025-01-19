import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import '../styles/decoration.dart';
import '../widgets/dialog_button.dart';

final List<String> days = [
  'السبت',
  'الأحد',
  'الإثنين',
  'الثلاثاء',
  'الأربعاء',
  'الخميس',
  'الجمعة',
];

class ChooseDaysDialog extends StatelessWidget {
  ChooseDaysDialog({super.key});

  final AllOrdersController controller = Get.find<AllOrdersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288.w,
      height: 215.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'اختر الأيام',
            style: MyDecorations.textStyle600(primary, 14),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 76.h,
            width: 252.w,
            child: GridView.builder(
              padding: EdgeInsetsDirectional.only(top: 12.h),
              itemCount: days.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of items in a row
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2.5,
              ),
              itemBuilder: (BuildContext context, int index) {
                final day = days[index];
                return Obx(() {
                  final isSelected = controller.days.contains(index + 1);
                  return DayChip(
                    text: day,
                    isSelected: isSelected,
                    onTap: () {
                      if (isSelected) {
                        controller.days.remove(index + 1);
                      } else {
                        controller.days.add(index + 1);
                      }
                    },
                  );
                });
              },
            ),
          ),
          SizedBox(height: 20.w),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DialogButton(
                onTap: () {
                  controller.restoreSelectedDays();
                  Get.back();
                },
                label: "إلغاء",
                buttonColor: lightGrey,
                labelColor: secondary,
              ),
              SizedBox(width: 9.w),
              DialogButton(
                onTap: () {
                  controller.applySelectedDays();
                  Get.back();
                },
                label: "تطبيق",
                buttonColor: blueTheme,
                labelColor: white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DayChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const DayChip({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? accent : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: MyDecorations.textStyle400(
              isSelected ? blueTheme : secondary,
              13,
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/decoration.dart';
import 'dialog_button.dart';

final List days = [
  'السبت',
  'الأحد',
  'الإثنين',
  'الثلاثاء',
  'الأربعاء',
  'الخميس',
  'الجمعة',
];

class ChooseDaysCard extends StatelessWidget {
  final AllOrdersController controller = Get.find<AllOrdersController>();

  ChooseDaysCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> selectedDays = controller.days.map((day) => convertNumToDay(day)).toList();
    return AlertDialog(
      contentPadding: EdgeInsetsDirectional.zero,
      content: Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
          color: whiteTheme,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: days.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      days[index],
                      style:   TextStyle(color: black),
                    ),
                    value: selectedDays.contains(days[index]),
                    onChanged: (bool? value) {
                      if (value == true) {
                        selectedDays.add(days[index]);
                      } else {
                        selectedDays.remove(days[index]);
                      }
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(bottom: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DialogButton(
                    onPressed: () {
                      Get.back();
                      controller.getFilteredData(selectedDays);
                    },
                    text: 'تطبيق',
                  ),
                  DialogButton(
                    onPressed: () {
                      Get.back();
                    },
                    text: 'إلغاء',
                                    label: "إلغاء",
                buttonColor: lightGrey,
                labelColor: secondary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String convertNumToDay(int day) {
  switch (day) {
    case 1:
      return 'السبت';
    case 2:
      return 'الأحد';
    case 3:
      return 'الإثنين';
    case 4:
      return 'الثلاثاء';
    case 5:
      return 'الأربعاء';
    case 6:
      return 'الخميس';
    case 7:
      return 'الجمعة';
    default:
      return '';
  }
}

 */
