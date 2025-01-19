import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color labelColor;
  final Color buttonColor;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.labelColor,
    required this.buttonColor,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
            width: 141.w,
            height: 43.h,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Center(
                child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: labelColor, fontSize: 14.w),
            ))),
      ),
    );
  }
}
