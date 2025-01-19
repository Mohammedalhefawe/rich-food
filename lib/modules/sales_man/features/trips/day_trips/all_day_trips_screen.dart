import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/features/trips/day_trips/all_day_trips_controller.dart';
import 'package:rich_food/modules/sales_man/models/day_trip_model.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../tour/tour_screen.dart';
import '../trip_dates/trip_dates_controller.dart';
import '../trip_dates/trip_dates_screen.dart';
import '../widgets/daily_trip_card.dart';

class DayTripsScreen extends StatelessWidget {
  DayTripsScreen({super.key});

  final TripDatesController tripDatesController =
      Get.put(TripDatesController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DayTripsController>(
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
            if (controller.dayTripsList.isEmpty) {
              return const NoDataGeneralWidget(
                message: 'لا يوجد رحلات اليوم',
              );
            }
            return ListView.separated(
              controller: controller.scrollController,
              itemCount: controller.dayTripsList.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index == controller.dayTripsList.length) {
                  return Center(
                    child: controller.isFetchingMore
                        ? const LoadingIndicatorWidget()
                        : const SizedBox(),
                  );
                }
                DayTripModel dayTripModel = controller.dayTripsList[index];
                print(dayTripModel.startTime);
                return InkWell(
                  onTap: () {
                    GetStorage storage = GetStorage();
                    Get.find<TripDatesController>().tripId = dayTripModel.id;
                    Get.find<TripDatesController>().fetchData();
                    if (storage.read(CacheKeys.showTour) == null) {
                      Get.to(() => const Scaffold(body: TourScreen()),
                          arguments: dayTripModel);
                    } else {
                      Get.to(() => TripDatesScreen(
                            dayTripModel: dayTripModel,
                          ));
                    }
                  },
                  child: DailyTripCard(
                    id: dayTripModel.id,
                    dayName: dayTripModel.trip.dayAr,
                    area: dayTripModel.address.area,
                    orderCount: dayTripModel.orderCount,
                    time: dayTripModel.startTime,
                    status: dayTripModel.status,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Gap(h: 12),
            );
          }),
        );
      },
    );
  }
}
