import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';

class UserInfoCard extends StatelessWidget {
  final String name, phone, role, city, branch;

  const UserInfoCard(
      {super.key,
        required this.name,
        required this.phone,
        required this.role,
        required this.city,
        required this.branch});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.w,
      height: 233.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 52.h,
                  height: 52.h,
                  decoration: const ShapeDecoration(
                    color: Color(0x3F73A3D0),
                    shape: CircleBorder(),
                  ),
                  child: Center(
                    child: Text(
                      name.characters.first,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: blueTheme,
                        fontSize: 24.w,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: 220.w,
                  height: 24.h,
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primary,
                      fontSize: 16.w,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: 120.w,
                  height: 27.h,
                  child: Text(
                    phone,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: secondary,
                      fontSize: 14.w,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          RoleAndDepWidget(role, branch),
        ],
      ),
    );
  }
}

class RoleAndDepWidget extends StatelessWidget {
  const RoleAndDepWidget(
      this.role,
      this.department, {
        super.key,
      });

  final String role;
  final String department;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'فرع $department',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: secondary,
              fontSize: 12.w,
              fontFamily: 'Noto Kufi Arabic',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
