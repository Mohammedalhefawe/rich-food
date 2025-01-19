import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class WeeklyTripCard extends StatelessWidget {
  const WeeklyTripCard(
      {super.key,
      required this.dayName,
      required this.locations,
      required this.onTap});
  final String dayName, locations;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 336.w,
      height: 86.h,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: base,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 7,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 6.w,
              height: 86.h,
              decoration: BoxDecoration(
                  color: blueTheme,
                  borderRadius: const BorderRadiusDirectional.horizontal(
                      start: Radius.circular(8))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        RichFoodIcons.calendar,
                        color: blueTheme,
                        size: 14,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        dayName,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: blueTheme,
                          fontSize: 14.w,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        RichFoodIcons.location,
                        color: iconColor,
                        size: 14,
                      ),
                      SizedBox(width: 4.w),
                      SizedBox(
                        child: SizedBox(
                          width: 280.w,
                          child: Text(
                            locations,
                            textAlign: TextAlign.right,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: TextStyle(
                              color: primary,
                              fontSize: 14.w,
                              fontFamily: MyDecorations.myFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
