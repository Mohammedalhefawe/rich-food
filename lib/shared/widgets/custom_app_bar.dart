import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/main_layout/main_layout_controller.dart';
import 'package:rich_food/shared/widgets/back_button.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actionsList;
  final PreferredSize? bottomWidget;
  final Widget? leadingIcon;
  final bool hideShadow;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actionsList,
    this.bottomWidget,
    this.leadingIcon,
    this.hideShadow = false,
  });

  @override
  Size get preferredSize {
    // Calculate total height based on kToolbarHeight and bottomWidget height
    double totalHeight =
        kToolbarHeight + (bottomWidget?.preferredSize.height ?? 0.0);
    return Size.fromHeight(totalHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          bottomWidget == null && !hideShadow
              ? const BoxShadow(
                  color: Color(0x0C000000),
                  blurRadius: 7,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              : const BoxShadow()
        ],
        color: base,
      ),
      child: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: base,
        elevation: 0,
        leading: leadingIcon ?? const MyBackButton(),
        title: Text(
          title,
          style: TextStyle(
            color: primary,
            fontSize: 20.w,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: actionsList,
        bottom: bottomWidget,
      ),
    );
  }
}
