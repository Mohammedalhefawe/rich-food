import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/shared/styles/colors.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 336.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: blueTheme,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Center(
              child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: whiteTheme, fontSize: 10.w),
          ))),
    );
  }
}
