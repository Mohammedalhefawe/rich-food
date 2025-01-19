import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: background,
  drawerTheme: DrawerThemeData(backgroundColor: background),
  fontFamily: MyDecorations.myFont,
  useMaterial3: true,
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: background,
  drawerTheme: DrawerThemeData(backgroundColor: background),
  fontFamily: MyDecorations.myFont,
  useMaterial3: true,
);
