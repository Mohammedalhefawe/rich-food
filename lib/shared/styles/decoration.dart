import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'colors.dart';

class MyDecorations {
  static String myFont = "Noto Kufi Arabic";

  static InputDecoration myInputDecoration({
    required String hint,
    Widget? icon,
    String? prefix,
    Widget? suffix,
  }) {
    double borderRadius = 8;
    double fontSize = 16;
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h,
      ),
      hintText: hint,
      fillColor: lightGrey,
      filled: true,
      border: OutlineInputBorder(
        // borderSide:   BorderSide(
        //   color: red,
        // ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: grey),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: red,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      labelStyle: TextStyle(
          color: black, fontSize: fontSize.w, fontWeight: FontWeight.w400),
      hintStyle: TextStyle(
          color: secondary, fontSize: fontSize.w, fontWeight: FontWeight.w400),
      errorStyle: TextStyle(
          color: red, fontSize: fontSize.w, fontWeight: FontWeight.w400),
      prefixIcon: icon,
      prefixText: prefix,
      suffixIcon: suffix,
    );
  }

  static InputDecoration myInputDecoration2({
    required String hint,
    Widget? icon,
    String? prefix,
    Widget? suffix,
  }) {
    double borderRadius = 8;
    double fontSize = 15;
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 9.5.h,
        vertical: 9.5.h,
      ),
      hintText: hint,
      fillColor: lightGrey,
      filled: true,

      border: OutlineInputBorder(
        borderSide: const BorderSide(
          color: red,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: grey),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: red,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),

      labelStyle: TextStyle(color: black, fontSize: fontSize.w),
      hintStyle: TextStyle(color: grey, fontSize: fontSize.w),
      errorStyle: TextStyle(color: red, fontSize: fontSize.w),

      prefixIcon: icon,
      prefixText: prefix,
      suffix: suffix,
      // suffix: Text(suffix, style: mySuffixTextStyle,),
    );
  }

  static InputDecoration myInputDecoration3({
    required String hint,
    Widget? icon,
    String? prefix,
    Widget? suffix,
    Widget? suffixIcon,
  }) {
    double borderRadius = 8.r;
    double fontSize = 12;
    FontWeight fontWeight = FontWeight.w400;
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 9.5.w,
        vertical: 9.5.h,
      ),
      hintText: hint,
      fillColor: lightGrey,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: lightGrey),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightGrey),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightGrey),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: redTheme),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),

      hintStyle: TextStyle(
          color: secondary, fontSize: fontSize.w, fontWeight: fontWeight),
      errorStyle:
          TextStyle(color: red, fontSize: fontSize.w, fontWeight: fontWeight),
      suffixIcon: suffixIcon,
      prefixIcon: icon,
      prefixText: prefix,
      suffix: suffix,
      // suffix: Text(suffix, style: mySuffixTextStyle,),
    );
  }

  static InputDecoration myInputDecoration4({
    required String hint,
    Widget? icon,
    String? prefix,
    Widget? suffix,
  }) {
    double borderRadius = 8.r;
    double fontSize = 12;
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 9.5.w,
        vertical: 9.5.h,
      ),
      hintText: hint,
      fillColor: lightGrey,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: red,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),

      labelStyle: TextStyle(color: secondary, fontSize: fontSize.w),
      hintStyle: TextStyle(color: secondary, fontSize: fontSize.w),
      errorStyle: TextStyle(color: red, fontSize: fontSize.w),

      prefixIcon: icon,
      prefixText: prefix,
      suffix: suffix,
      // suffix: Text(suffix, style: mySuffixTextStyle,),
    );
  }

  static InputDecoration searchInputDecoration({
    required String hint,
    Widget? icon,
    String? prefix,
    Widget? suffix,
  }) {
    double borderRadius = 8.r;
    double fontSize = 12;
    return InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 8.h,
      ),
      hintText: hint,
      fillColor: lightGrey,
      filled: true,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: lightGrey,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: red,
        ),
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),

      labelStyle: TextStyle(color: primary, fontSize: fontSize),
      hintStyle: TextStyle(color: secondary, fontSize: fontSize),
      errorStyle: TextStyle(color: red, fontSize: fontSize),

      prefixIcon: icon,
      prefixText: prefix,
      suffix: suffix,
      // suffix: Text(suffix, style: mySuffixTextStyle,),
    );
  }

  static ButtonStyle myButtonStyle(Color color) {
    return ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
    );
  }

  static ButtonStyle profileButtonStyle(Color color) {
    return ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      //padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 10.h),
    );
  }

  static TextStyle myButtonTextStyle(
      {required double fontSize, required FontWeight fontWeight}) {
    return TextStyle(
      color: white,
      fontFamily: myFont,
      fontSize: fontSize.w,
      fontWeight: fontWeight,
      height: 1.0, // line height in terms of multiplier
    );
  }

  ///******************* TEXT-STYLE *********************///

  static TextStyle textStyle400(Color color, double size) => TextStyle(
        color: color,
        fontSize: size.w,
        fontWeight: FontWeight.w400,
        fontFamily: myFont,
      );

  static TextStyle textStyle500(Color color, double size) => TextStyle(
        color: color,
        fontSize: size.w,
        fontWeight: FontWeight.w500,
        fontFamily: myFont,
      );

  static TextStyle textStyle600(Color color, double size) => TextStyle(
        color: color,
        fontSize: size.w,
        fontWeight: FontWeight.w600,
        fontFamily: myFont,
      );

  static TextStyle textStyle700(Color color, double size) => TextStyle(
        color: color,
        fontSize: size.w,
        fontWeight: FontWeight.w700,
        fontFamily: myFont,
      );

  static TextStyle profileGreyTextStyle = TextStyle(
    color: grey,
    fontSize: 14.w,
    fontWeight: FontWeight.w500,
    fontFamily: myFont,
  );
}
