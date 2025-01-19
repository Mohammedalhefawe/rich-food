import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';

class CartCustomerInfo extends StatelessWidget {
  final String customerName, address, phoneNumbers, customerType;
  final VoidCallback onChangeCustomer;

  const CartCustomerInfo({
    super.key,
    required this.customerName,
    required this.address,
    required this.phoneNumbers,
    required this.onChangeCustomer,
    required this.customerType,
  });
  // add stacked edit button if isMine
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      // height: 108.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(color: background),
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
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
              Gap(
                w: 12,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 137.w,
                    height: 26.h,
                    child: Text(
                      customerName,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: primary,
                        fontSize: 14.w,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Gap(
                    h: 4,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        RichFoodIcons.location,
                        color: secondary,
                        size: 14.w,
                      ),
                      Gap(
                        w: 2,
                      ),
                      SizedBox(
                        width: 203.w,
                        height: 27.h,
                        child: Text(
                          address,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: secondary,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        RichFoodIcons.phone,
                        color: secondary,
                        size: 14,
                      ),
                      Gap(
                        w: 4,
                      ),
                      Text(
                        phoneNumbers,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: secondary,
                          fontSize: 14,
                          fontFamily: MyDecorations.myFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Gap(
                    w: 2,
                  ),
                  Text(
                    customerType,
                    style: TextStyle(
                      color: secondary,
                      fontSize: 14.w,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ],
          ),
          // if (isMine && onChangeCustomer != null)
          PositionedDirectional(
              end: 0,
              top: 0,
              child: InkWell(
                onTap: onChangeCustomer,
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      size: 13.w,
                      color: secondary,
                    ),
                    Gap(
                      w: 4,
                    ),
                    Text(
                      'تعديل',
                      style: TextStyle(
                          color: secondary,
                          fontWeight: FontWeight.w500,
                          fontFamily: MyDecorations.myFont,
                          fontSize: 10.w),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
