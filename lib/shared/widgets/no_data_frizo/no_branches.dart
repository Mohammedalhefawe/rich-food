import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../styles/colors.dart';
import '../../styles/decoration.dart';
import '../gap.dart';
import '../painter_widgets/frizo_confused.dart';

class NoBranchesWidget extends StatelessWidget {
  const NoBranchesWidget({
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
            painter: FrizoConfusedPainter(),
          ),
          const Gap(
            h: 24,
          ),
          Text(
            message ?? 'لا يوجد بيانات',
            style: MyDecorations.textStyle600(secondary, 16),
          ),
        ],
      ),
    );
  }
}
