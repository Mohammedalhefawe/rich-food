import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class OrderButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color color;
  final Color labelColor;

  const OrderButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.color,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: 318.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Center(
              child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: labelColor, fontSize: 12),
          ))),
    );
  }
}
