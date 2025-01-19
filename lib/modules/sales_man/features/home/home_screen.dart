import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/main_layout/main_layout_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/week_trips/all_week_trips_screen.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../trips/day_trips/all_day_trips_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: GetBuilder<SalesmanMainLayoutController>(
          init: SalesmanMainLayoutController(),
          builder: (controller) {
            return Scaffold(
              backgroundColor: background,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(54.h),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 7,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                    color: base,
                  ),
                  child: TabBar(
                    labelStyle: TextStyle(
                      color: blueTheme,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w600,
                    ),
                    unselectedLabelColor: secondary,
                    labelColor: blueTheme,
                    indicatorColor: blueTheme,
                    indicatorWeight: 2,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: Container(
                          height: 54.h,
                          alignment: Alignment.center,
                          child: const Text('يومية'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 54.h,
                          alignment: Alignment.center,
                          child: const Text('أسبوعية'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: Padding(
                padding: EdgeInsets.only(
                    top: 12.h, left: 12.w, right: 12.w, bottom: 12.h),
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    DayTripsScreen(),
                    const WeekTripsScreen(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
