import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../styles/colors.dart';
import '../../styles/decoration.dart';
import '../gap.dart';
import '../painter_widgets/frizo_searching.dart';

class NoDataSearchWidget extends StatelessWidget {
  const NoDataSearchWidget({
    super.key,
    this.message,
  });
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPaint(
            size: Size(
                200.w,
                (200.w * 1)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: FrizoSearchingPainter(),
          ),
          const Gap(
            h: 24,
          ),
          Text(
            message ?? 'لا يوجد نتائج للبحث ',
            style: MyDecorations.textStyle600(secondary, 16),
          ),
        ],
      ),
    );
  }
}
