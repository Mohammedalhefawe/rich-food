import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/shared/styles/colors.dart';
import '../widgets/dialog_button.dart';

class DialogCancelButton extends StatelessWidget {
  const DialogCancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogButton(
      labelColor: secondary,
      buttonColor: lightGrey,
      label: 'إلغاء',
      onTap: () {
        Get.back();
      },
    );
  }
}
