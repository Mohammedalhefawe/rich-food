import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

extension SizerExtension on Widget {
  SizedBox sizer({double? h, double? w}) {
    return SizedBox(
      height: (h ?? 50).h,
      width: (w ?? 50).w,
      child: this,
    );
  }
}
