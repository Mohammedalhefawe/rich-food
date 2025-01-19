import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../painter_widgets/frizo_hey.dart';

class TourWidget extends StatelessWidget {
  const TourWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          200.w,
          (200.w * 1)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: FrizoHeyPainter(),
    );
  }
}
