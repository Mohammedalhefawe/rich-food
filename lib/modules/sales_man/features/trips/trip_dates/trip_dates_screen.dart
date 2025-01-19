/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/trips/trip_dates/trip_dates_controller.dart';
import 'package:rich_food/modules/sales_man/models/trip_dates_model.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/enums.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../orders/all_orders/all_orders_controller.dart';
import '../../orders/view_order/view_order_screen.dart';
import '../widgets/customer_trip_card.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../../../utils/services/time_formatter.dart';
import '../../../models/day_trip_model.dart';
import '../trip_timer/trip_timer_widget.dart';

class TripDatesScreen extends StatelessWidget {
  TripDatesScreen({super.key, required this.dayTripModel});

  final DayTripModel dayTripModel;
  final TripDatesController controller = Get.find<TripDatesController>()
    ..resetSearch();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(
        title: dayTripModel.address.area,
        bottomWidget: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: Container(
            width: 360.w,
            height: 60.h,
            color: background,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 14.w, vertical: 12.h),
            child: SizedBox(
              width: 332.w,
              height: 36.h,
              child: TextField(
                onChanged: (value) {
                  controller.searchText = value;
                  controller.fetchData();
                },
                cursorColor: grey,
                decoration: MyDecorations.searchInputDecoration(
                  icon: Icon(
                    Icons.search,
                    size: 20,
                    color: secondary,
                  ),
                  hint: "بحث",
                ),
                style: TextStyle(
                  color: primary,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ),
      body: GetBuilder<TripDatesController>(
        builder: (controller) {
          if (controller.isLoading) {
            return LoadingIndicatorWidget();
          }
          if (controller.isError) {
            return MyErrorWidget(
              onTapped: controller.fetchData,
            );
          }
          return Builder(builder: (_) {
            if (controller.tripDatesList.isEmpty) {
              return const NoDataGeneralWidget(
                message: 'لا يوجد طلبات لعرضها ',
              );
            }
            return Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 12.w, vertical: 12.h),
                child: ListView.separated(
                  itemCount: controller.tripDatesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    TripDatesModel tripDatesModel =
                        controller.tripDatesList[index];
                    return InkWell(
                      onTap: () {
                        // ask backend to make tripDatesModel same as ordermodel
                        // Get.find<AllOrdersController>().orderId = tripDatesModel.id!;
                        // Get.find<AllOrdersController>().getOrderById();
                        // Get.to(() => OrderScreen());

                        // Ensure the controller is properly initialized and has the correct orderId
                        AllOrdersController controller =
                            Get.find<AllOrdersController>();
                        controller.orderId = tripDatesModel.id!;
                        controller.getOrderById().then((success) {
                          if (success) {
                            Get.to(() => OrderScreen());
                          } else {
                            showMessage('Failed to load order', false);
                          }
                        });
                      },
                      child: CustomerTripCard(
                        dayName: dayTripModel.trip.dayAr,
                        time:
                            formatArabicTime(tripDatesModel.deliveryTime ?? ''),
                        customerName: tripDatesModel.customer?.name ?? '',
                        address: tripDatesModel.customer?.location ??
                            'لا يوجد عنوان',
                        area: tripDatesModel.customer?.address?.area ?? '',
                        orderNum: "${tripDatesModel.id}",
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => Gap(
                    h: 12,
                  ),
                ));
          });
        },
      ),
      floatingActionButton: dayTripModel.status == 'current'
          ? TripTimerWidget(initTripCase: TripCase.current)
          : dayTripModel.status == 'next'
              ? TripTimerWidget(initTripCase: TripCase.next)
              : null,
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/modules/sales_man/features/trips/trip_dates/trip_dates_controller.dart';
import 'package:rich_food/modules/sales_man/models/trip_dates_model.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/helpers/cacheKeys.dart';
import '../../../../../shared/enums.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../orders/all_orders/all_orders_controller.dart';
import '../../orders/view_order/view_order_screen.dart';
import '../widgets/customer_trip_card.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../../../../../utils/services/time_formatter.dart';
import '../../../models/day_trip_model.dart';
import '../trip_timer/trip_timer_widget.dart';

class TripDatesScreen extends StatelessWidget {
  TripDatesScreen({super.key, required this.dayTripModel});

  final DayTripModel dayTripModel;
  final TripDatesController controller = Get.find<TripDatesController>()
    ..resetSearch();

  void back() {
    GetStorage storage = GetStorage();
    if (storage.read(CacheKeys.backTwo) == true) {
      storage.write(CacheKeys.backTwo, false);
      Get.back();
      Get.back();
    } else {
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(
        title: dayTripModel.address.area,
        leadingIcon: InkWell(
          onTap: () {
            back();
          },
          child: Icon(
            RichFoodIcons.arrow_1,
            color: primary,
            size: 18,
          ),
        ),
        bottomWidget: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: Container(
            width: 360.w,
            height: 60.h,
            color: background,
            padding: EdgeInsetsDirectional.symmetric(
                horizontal: 14.w, vertical: 12.h),
            child: SizedBox(
              width: 332.w,
              height: 36.h,
              child: TextField(
                onChanged: (value) {
                  controller.searchText = value;
                  controller.fetchData();
                },
                cursorColor: grey,
                decoration: MyDecorations.searchInputDecoration(
                  icon: Icon(
                    Icons.search,
                    size: 20,
                    color: secondary,
                  ),
                  hint: "بحث",
                ),
                style: TextStyle(
                  color: primary,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Add your custom logic here
          back();
          return false;
        },
        child: GetBuilder<TripDatesController>(
          builder: (controller) {
            if (controller.isLoading) {
              return LoadingIndicatorWidget();
            }
            if (controller.isError) {
              return MyErrorWidget(
                onTapped: controller.fetchData,
              );
            }
            return Builder(builder: (_) {
              if (controller.tripDatesList.isEmpty) {
                return const NoDataGeneralWidget(
                  message: 'لا يوجد طلبات لعرضها ',
                );
              }
              return Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 12.w, vertical: 12.h),
                  child: ListView.separated(
                    itemCount: controller.tripDatesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      TripDatesModel tripDatesModel =
                          controller.tripDatesList[index];
                      return InkWell(
                        onTap: () {
                          // ask backend to make tripDatesModel same as ordermodel
                          // Get.find<AllOrdersController>().orderId = tripDatesModel.id!;
                          // Get.find<AllOrdersController>().getOrderById();
                          // Get.to(() => OrderScreen());

                          // Ensure the controller is properly initialized and has the correct orderId
                          AllOrdersController controller =
                              Get.find<AllOrdersController>();
                          controller.orderId = tripDatesModel.id!;
                          controller.getOrderById().then((success) {
                            if (success) {
                              Get.to(() => OrderScreen());
                            } else {
                              showMessage('Failed to load order', false);
                            }
                          });
                        },
                        child: CustomerTripCard(
                          dayName: dayTripModel.trip.dayAr,
                          time: formatArabicTime(
                              tripDatesModel.deliveryTime ?? ''),
                          customerName: tripDatesModel.customer?.name ?? '',
                          address: tripDatesModel.customer?.location ??
                              'لا يوجد عنوان',
                          area: tripDatesModel.customer?.address?.area ?? '',
                          orderNum: "${tripDatesModel.id}",
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => Gap(
                      h: 12,
                    ),
                  ));
            });
          },
        ),
      ),
      floatingActionButton: dayTripModel.status == 'current'
          ? TripTimerWidget(initTripCase: TripCase.current)
          : dayTripModel.status == 'next'
              ? TripTimerWidget(initTripCase: TripCase.next)
              : null,
    );
  }
}
