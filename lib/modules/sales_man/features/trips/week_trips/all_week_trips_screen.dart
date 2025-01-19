import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../models/week_trip_model.dart';
import '../custom_day_trips/custom_day_trips_controller.dart';
import '../custom_day_trips/custom_day_trips_screen.dart';
import '../widgets/weekly_trip_card.dart';
import '../../../../../shared/widgets/gap.dart';
import 'all_week_trips_controller.dart';

class WeekTripsScreen extends StatelessWidget {
  const WeekTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllWeekTripsController>(
      builder: (controller) {
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
              if (controller.weeklySchedule.days.isEmpty) {
                return const NoDataGeneralWidget(
                  message: 'لا يوجد رحلات لعرضها',
                );
              }
              return ListView.separated(
                itemCount: controller.weeklySchedule.daysList.length,
                itemBuilder: (BuildContext context, int index) {
                  DaySchedule daySchedule =
                      controller.weeklySchedule.daysList[index];
                  return WeeklyTripCard(
                    dayName: daySchedule.dayAr,
                    locations: daySchedule.addresses,
                    onTap: () {
                      CustomDayController cont =
                          Get.find<CustomDayController>();
                      cont.dayName =
                          daySchedule.day; // Use the English day name here
                      cont.fetchData();
                      print('${daySchedule.dayAr} ${cont.dayName}');
                      Get.to(() => CustomDayTripsScreen(daySchedule.dayAr));
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Gap(h: 12),
              );
            }));
      },
    );
  }
}
