import 'package:flutter/animation.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../customer/features/main_layout/main_layout_screen.dart';
import '../sales_man/features/main_layout/main_layout_screen.dart';

void navigateToMainLayout(isCustomer) async {
  isCustomer
      ? {
          Get.off(
            () => CustomerMainLayout(),
            curve: Curves.easeInOut,
          )
        }
      : {
          Get.off(
            () => SalesManMainLayout(),
            curve: Curves.easeInOut,
          )
        };
}
