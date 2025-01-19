import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';

void showMessage(String message, bool? good) {
  print('SB: $message');
  Color color =
      (good == true) ? const Color(0xff73A3D0) : const Color(0xffCE3446);
  Get.showSnackbar(GetSnackBar(
    // shouldIconPulse: false,
    snackPosition: SnackPosition.BOTTOM,
    borderRadius: 8.0.r,
    margin: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 12.0.w),
    icon: Icon(
      good == true ? Icons.check_circle : Icons.info,
      // good == true ? Icons.check_circle : Icons.info,
      color: white,
      size: 24.sp,
    ),
    message: message,
    messageText: Text(message, style: MyDecorations.textStyle600(white, 14)),
    backgroundColor: color,
    duration: const Duration(seconds: 3),
    animationDuration: const Duration(milliseconds: 500),
  ));
}

/*showMessage(String message, bool good) {
  print(message);
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 4,
    backgroundColor: good ? lightGrey : red,
    textColor: primary,
    fontSize: 16,
  );
}*/

/*showMessage(String message, bool? good) {
  print('SB: $message');
  Get.snackbar(
    'تنبيه',
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: light_accent,
    dismissDirection: DismissDirection.horizontal,
  );
}*/

/*void showSnackBar(String message) {
  // Get.snackbar(
  //   'تنبيه',
  //   message,
  //   snackPosition: SnackPosition.BOTTOM,
  //   backgroundColor: light_accent,
  //   dismissDirection: DismissDirection.horizontal,
  //   duration:   Duration(seconds: 3),
  //   margin: EdgeInsets.all(8),
  //   borderRadius: 8,
  //   isDismissible: true,
  //   forwardAnimationCurve: Curves.easeOutBack,
  // );
  Get.showSnackbar(GetSnackBar(
    title: 'تنبيه',
    message: message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: light_accent,
    duration: const Duration(seconds: 3),
    margin: const EdgeInsets.all(8),
    borderRadius: 8,
    isDismissible: true,
    forwardAnimationCurve: Curves.easeOutBack,
  ));
}*/

/*
Future<bool> showDelayedMessage(String message, bool? good) {
  print('SB: $message');
  Get.snackbar(
    'تنبيه',
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: light_accent,
  );
  return Future.value(true);
}
*/
