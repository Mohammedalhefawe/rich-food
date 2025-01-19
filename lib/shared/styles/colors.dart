import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/theme/app_theme.dart';

const Color red = Color(0xFFCE3446);
const Color white = Color(0xFFFFFFFF);
const Color black = Color(0xFF262626);
const Color blue = Color(0xFF73A3D0);

///****  LIGHT  ****///
const Color _lightBackground = Color(0xFFEAEFEE);
const Color _lightPrimary = Color(0xFF262626);
const Color _lightSecondary = Color(0xFF5A5A5A);
const Color _lightBase = Color(0xFFEEF1F0);
const Color _lightLightGrey = Color(0xFFE3E8E7);
const Color _lightGrey = Color(0xFFC9CDCC);
const Color accent = Color(0xFFCCDCE6);

///****  DARK  ****///
const Color _darkBackground = Color(0xFF222222);
const Color _darkPrimary = Color(0xFFF2F4F8);
const Color _darkSecondary = Color(0xFFBCBCBC);
const Color _darkBase = Color(0xFF2C2C2C);
const Color _darkLightGrey = Color(0xFF3B3B3B);
const Color _darkGrey = Color(0xFF3C3C3C);

Color iconColor = primary;
Color background = AppTheme.isDark ? _darkBackground : _lightBackground;
Color primary = AppTheme.isDark ? _darkPrimary : _lightPrimary;
Color secondary = AppTheme.isDark ? _darkSecondary : _lightSecondary;
Color base = AppTheme.isDark ? _darkBase : _lightBase;
Color lightGrey = AppTheme.isDark ? _darkLightGrey : _lightLightGrey;
Color grey = AppTheme.isDark ? _darkGrey : _lightGrey;
Color whiteTheme = AppTheme.isDark ? const Color(0xFF353536) : white;
Color redTheme = AppTheme.isDark ? red : red;
Color blueTheme = AppTheme.isDark ? const Color(0xff73A3D0) : blue;

updateColor() {
  background = AppTheme.isDark ? _darkBackground : _lightBackground;
  primary = AppTheme.isDark ? _darkPrimary : _lightPrimary;
  secondary = AppTheme.isDark ? _darkSecondary : _lightSecondary;
  base = AppTheme.isDark ? _darkBase : _lightBase;
  lightGrey = AppTheme.isDark ? _darkLightGrey : _lightLightGrey;
  grey = AppTheme.isDark ? _darkGrey : _lightGrey;
  whiteTheme = AppTheme.isDark ? const Color(0xFF353536) : white;
  redTheme = AppTheme.isDark ? red : red;
  blueTheme = AppTheme.isDark ? const Color(0xff73A3D0) : blue;
  iconColor = primary;
}
