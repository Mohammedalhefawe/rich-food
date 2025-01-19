import 'package:flutter/material.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

class CustomerInfoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTilePressed;

  const CustomerInfoTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTilePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      // height: 70,
      //edit
      constraints: BoxConstraints(minHeight: 70.h),
      child: ListTile(
        onTap: () {},
        splashColor: lightGrey,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text(
              title,
              style: TextStyle(
                color: primary,
                fontSize: 14,
                fontFamily: MyDecorations.myFont,
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ],
        ),
        subtitle: Container(
          margin: EdgeInsetsDirectional.only(start: 26.w),
          child: Text(
            subtitle,
            style: TextStyle(
              color: secondary,
              fontSize: 14,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
