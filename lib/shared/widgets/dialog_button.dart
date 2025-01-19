import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class DialogButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color buttonColor;
  final VoidCallback onTap;

  const DialogButton({
    super.key,
    required this.labelColor,
    required this.buttonColor,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 78.w,
          height: 33.h,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Center(
              child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: labelColor,
                fontSize: 12.w,
                fontFamily: MyDecorations.myFont),
          ))),
    );
  }
}
