import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';

class CustomerNotificationCard extends StatelessWidget {
  final String customerName;
  final String address;
  final String content;
  final String date;
  final bool isRead;

  const CustomerNotificationCard({
    super.key,
    required this.customerName,
    required this.address,
    required this.content,
    required this.date,
    required this.isRead,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 130.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(color: isRead ? base : grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40.w,
                height: 40.h,
                decoration: const ShapeDecoration(
                  color: Color(0x3F73A3D0),
                  shape: CircleBorder(),
                ),
                child: Center(
                  child: Text(
                    customerName.characters.first,
                    style: TextStyle(
                      color: blueTheme,
                      fontSize: 16.w,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 137.w,
                    height: 23.h,
                    child: Text(
                      customerName,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: primary,
                        fontSize: 16.w,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
                    width: 230.w,
                    child: Text(
                      content,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: secondary,
                        fontSize: 14.w,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: null,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              Text(
                date,
                style: TextStyle(
                  color: blueTheme,
                  fontSize: 12.sp,
                  fontFamily: MyDecorations.myFont,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
