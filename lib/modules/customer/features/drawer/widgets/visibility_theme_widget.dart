import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/auth/controller/branches_controller.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../../shared/styles/theme/app_theme.dart';

class VisibilityThemeCustomerWidget extends StatelessWidget {
  const VisibilityThemeCustomerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // DrawerCustomerController controller = Get.find<DrawerCustomerController>();
    return GetBuilder<DrawerCustomerController>(
      init: DrawerCustomerController(),
      builder: (controller) {
        return Column(
          children: [
            ThemeTile(
              title: "الفاتح",
              isSelected: !controller.isDark,
              onItemSelect: () {
                if (controller.isDark) {
                  controller.changeTheme();
                }
              },
            ),
            ThemeTile(
              title: "الغامق",
              isSelected: controller.isDark,
              onItemSelect: () {
                if (!controller.isDark) {
                  controller.changeTheme();
                }
              },
            )
          ],
        );
      },
    );
  }
}

class ThemeTile extends StatelessWidget {
  const ThemeTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onItemSelect,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onItemSelect;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onItemSelect();
      },
      child: Stack(
        children: [
          Container(
            height: 60.h,
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: isSelected
                ? BoxDecoration(
                    color: AppTheme.isDark ? accent.withOpacity(0.2) : accent,
                    borderRadius: BorderRadius.circular(8.r))
                : const BoxDecoration(),
          ),
          Container(
            height: 60.h,
            // margin: EdgeInsets.symmetric(horizontal: 6.w),
            padding: EdgeInsetsDirectional.only(start: 40.w),
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 12.w,
                    fontWeight: FontWeight.w400,
                    color: isSelected ? blueTheme : primary),
              ),
              trailing: Padding(
                padding: EdgeInsetsDirectional.only(start: 37.w),
                child:
                    isSelected ? const SelectedIcon() : const UnSelectedIcon(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UnSelectedIcon extends StatelessWidget {
  const UnSelectedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_off_outlined,
      color: primary,
      size: 15,
    );
  }
}

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.radio_button_checked_outlined,
      color: blueTheme,
      size: 15,
    );
  }
}
