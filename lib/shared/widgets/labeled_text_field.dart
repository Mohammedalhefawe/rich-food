import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../styles/colors.dart';
import '../styles/decoration.dart';

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  final IconData? preLabelIcon;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconPressed;

  const TextFieldWithLabel({
    super.key,
    required this.label,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconPressed,
    this.preLabelIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (preLabelIcon != null) ...[
              Icon(
                preLabelIcon,
                size: 20,
                color: iconColor,
              ),
              SizedBox(
                width: 4.w,
              )
            ],
            Text(
              label,
              style: TextStyle(
                color: primary,
                fontSize: 14.w,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        TextFormField(
          // controller: _phoneController,
          // textDirection: textDirection,
          keyboardType: TextInputType.phone,
          decoration: MyDecorations.myInputDecoration(
            hint: hintText,
          ),
          textInputAction: TextInputAction.next,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'رجاء أدخل رقم الموبايل';
            } else if (value.length != 10) return 'الرقم الذي أدخلته غير صحيح';
            return null;
          },
        ),
      ],
    );
  }
}
