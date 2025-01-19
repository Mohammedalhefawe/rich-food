import 'package:flutter/material.dart';
import 'package:rich_food/modules/sales_man/features/trips/widgets/moving_widget.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';
import '../../../../../utils/services/time_formatter.dart';

class DailyTripCard extends StatelessWidget {
  const DailyTripCard({
    super.key,
    required this.dayName,
    required this.time,
    required this.area,
    required this.orderCount,
    required this.id,
    required this.status,
  });

  final String dayName, time, area, status;
  final int orderCount, id;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.topStart, children: [
      Container(
        width: 336.w,
        height: 89.h,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: base,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          shadows: const [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 7,
              offset: Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      RichFoodIcons.calendar,
                      color: iconColor,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    SizedBox(
                      width: 80,
                      child: Text(dayName,
                          textAlign: TextAlign.right,
                          style: MyDecorations.textStyle400(primary, 14)),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.access_time,
                      color: (status == 'next') ? blueTheme : iconColor,
                      size: 14,
                    ),
                    const SizedBox(width: 4),
                    SizedBox(
                      width: 68.w,
                      child: Text(
                        formatArabicTime(time),
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          color: (status == 'next') ? blueTheme : primary,
                          fontSize: 14.w,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 4.w,
              height: 73.h,
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 8),
              decoration: BoxDecoration(color: blueTheme),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  area,
                  style: TextStyle(
                    color: primary,
                    fontSize: 14.w,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$orderCount طلبات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: secondary,
                    fontSize: 14.w,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      if (status == "next")
        PositionedDirectional(
          end: 12.w,
          top: 12.h,
          child: MovingWidget(
              child: Icon(
            RichFoodIcons.clock,
            color: blueTheme,
            size: 20,
          )),
        )
      else
        (status == "current")
            ? PositionedDirectional(
                end: 12.w,
                top: 12.h,
                child: Row(
                  children: [
                    Container(
                      width: 6.w,
                      height: 6.w,
                      decoration: ShapeDecoration(
                        color: blueTheme,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "قيد التنفيذ",
                      style: MyDecorations.textStyle500(blueTheme, 12),
                    ),
                  ],
                ))
            : const SizedBox()
    ]);
  }
}
