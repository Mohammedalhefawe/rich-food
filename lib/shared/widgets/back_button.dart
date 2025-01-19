import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import '../styles/colors.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    super.key,
    this.action,
  });

  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: lightGrey,
      icon: Icon(
        RichFoodIcons.arrow_1,
        size: 20,
        color: primary,
      ),
      onPressed: () {
        if (action != null) {
          action!();
        }
        Get.back();
      },
    );
  }
}
