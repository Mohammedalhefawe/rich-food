import 'package:flutter/widgets.dart';

extension SizeExtension on num {
  static double designWidth = 360.0;
  static double designHeight = 800.0;

  double get w =>
      (this / SizeExtension.designWidth) * MediaQuery.of(_context).size.width;
  double get h =>
      (this / SizeExtension.designHeight) *
      (MediaQuery.of(_context).size.height -
          MediaQuery.of(_context).padding.vertical);

  double get fh =>
      (this / SizeExtension.designHeight) * MediaQuery.of(_context).size.height;

  // Radius based on the average of design width and height
  double get r =>
      (this / ((SizeExtension.designWidth + SizeExtension.designHeight) / 2)) *
      ((MediaQuery.of(_context).size.width +
              MediaQuery.of(_context).size.height) /
          2);

  // Font size based on the screen width
  double get sp =>
      (this / SizeExtension.designWidth) * MediaQuery.of(_context).size.width;

  static late BuildContext _context;

  static void init(BuildContext context,
      {double width = 360.0, double height = 800.0}) {
    _context = context;
    designWidth = width;
    designHeight = height;
  }
}
