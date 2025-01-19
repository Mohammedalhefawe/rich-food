import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/trips/custom_day_trips/custom_day_trips_controller.dart';
import 'package:rich_food/modules/sales_man/features/trips/widgets/daily_trip_card.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../models/day_trip_model.dart';
import '../trip_dates/trip_dates_controller.dart';
import '../trip_dates/trip_dates_screen.dart';

class CustomDayTripsScreen extends StatelessWidget {
  CustomDayTripsScreen(
    this.dayAr, {
    super.key,
  });

  final CustomDayController controller = Get.find<CustomDayController>();
  final String dayAr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(
        title: dayAr,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: GetBuilder<CustomDayController>(builder: (controller) {
          if (controller.isLoading) {
            return const LoadingIndicatorWidget();
          }
          if (controller.isError) {
            return MyErrorWidget(
              onTapped: controller.fetchData,
            );
          }
          return RefreshIndicator(
            color: blueTheme,
            onRefresh: controller.fetchData,
            child: Builder(builder: (_) {
              if (controller.dayTripsList.isEmpty) {
                return NoDataGeneralWidget(
                  message: 'لا يوجد ليوم $dayAr',
                );
              }
              return ListView.separated(
                controller: controller.scrollController,
                itemCount: controller.dayTripsList.length,
                itemBuilder: (BuildContext context, int index) {
                  DayTripModel dayTripModel = controller.dayTripsList[index];
                  return InkWell(
                      onTap: () {
                        Get.find<TripDatesController>().tripId =
                            dayTripModel.id;
                        Get.find<TripDatesController>().fetchData();
                        Get.to(() => TripDatesScreen(
                              dayTripModel: dayTripModel,
                            ));
                      },
                      child: DailyTripCard(
                        dayName: dayTripModel.trip.dayAr,
                        time: dayTripModel.startTime,
                        area: dayTripModel.address.area,
                        orderCount: dayTripModel.orderCount,
                        id: dayTripModel.id,
                        status: dayTripModel.status,
                      ));
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Gap(
                  h: 12,
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
