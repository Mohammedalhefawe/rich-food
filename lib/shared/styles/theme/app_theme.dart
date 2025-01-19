import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/theme/themes.dart';
import 'package:rich_food/utils/helpers/cacheKeys.dart';

class AppTheme extends GetxController {
  late GetStorage storage;
  late ThemeData appTheme;
  static bool isDark = false;

  changeTheme() {
    print('newTheme==================================1');
    if (isDark) {
      storage.write(CacheKeys.theme, 'dark');
      Get.changeTheme(darkTheme);
    } else {
      storage.write(CacheKeys.theme, 'light');
      Get.changeTheme(lightTheme);
    }
    updateColor();
    print('newTheme==================================');
  }

  @override
  void onInit() {
    storage = GetStorage();
    String? theme = storage.read(CacheKeys.theme);
    if (theme == "dark") {
      appTheme = darkTheme;
      isDark = true;
    } else if (theme == "light") {
      appTheme = lightTheme;
      isDark = false;
    } else {
      appTheme = lightTheme;
      isDark = false;
    }
    updateColor();
    super.onInit();
  }
}
