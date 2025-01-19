import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../styles/colors.dart';

SizedBox myDivider() {
  return SizedBox(
    width: 115.w,
    child: Divider(
      height: 1.h,
      color: secondary,
    ),
  );
}
