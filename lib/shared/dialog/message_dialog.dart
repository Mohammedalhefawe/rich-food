import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';
import '../styles/decoration.dart';

class MessageDialog extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;

  const MessageDialog({
    super.key,
    required this.title,
    required this.message,
    this.buttonText = 'موافق',
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      // surfaceTintColor: black,
      title: Text(
        title,
        style: MyDecorations.textStyle500(primary, 14),
      ),
      content: Text(
        message,
        style: MyDecorations.textStyle400(primary, 14),
      ),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          style: TextButton.styleFrom(
            foregroundColor: primary, // Set the text color
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: lightGrey,
              fontSize: 14.w,
              fontWeight: FontWeight.w600,
              fontFamily: MyDecorations.myFont,
            ),
          ),
        ),
      ],
    );
  }
}
