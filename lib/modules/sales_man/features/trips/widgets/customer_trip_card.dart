import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../../shared/styles/colors.dart';

class CustomerTripCard extends StatelessWidget {
  const CustomerTripCard(
      {super.key,
      required this.dayName,
      required this.time,
      required this.customerName,
      required this.address,
      required this.orderNum,
      required this.area});
  final String dayName, time, address, customerName, orderNum, area;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 336.w,
      // height: 105.h,
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
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    RichFoodIcons.calendar,
                    color: primary,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  SizedBox(
                    width: 60.w,
                    child: Text(
                      dayName,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: primary,
                        fontSize: 14.w,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    RichFoodIcons.clock,
                    color: iconColor,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  SizedBox(
                    width: 68.w,
                    child: Text(
                      time,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: primary,
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
            margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(color: blueTheme),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customerName,
                style: TextStyle(
                  color: primary,
                  fontSize: 14.w,
                  fontFamily: MyDecorations.myFont,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'الطلب : $orderNum',
                textAlign: TextAlign.right,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  color: primary,
                  fontSize: 14.w,
                  fontFamily: MyDecorations.myFont,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                // fit: BoxFit.fitWidth,
                // width: double.infinity,
                width: 180.w,
                child: Text(
                  "$area - $address",
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: primary,
                    fontSize: 14.w,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 1,
                  // overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
