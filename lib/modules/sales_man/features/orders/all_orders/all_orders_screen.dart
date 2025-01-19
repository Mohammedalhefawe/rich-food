import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/add_order_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/select_customer_screen.dart';
import 'package:rich_food/modules/sales_man/models/order_model.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/shared/widgets/no_data_frizo/no_data_search.dart';
import 'package:rich_food/shared/widgets/snackBar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/phone_list_interpolater.dart';
import '../../../../../shared/dialog/order_cancel_dialog.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/dialog/choose_days_dialog.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../../shared/widgets/no_data_frizo/no_data_general.dart';
import '../widgets/order_customer_info.dart';
import '../view_order/view_order_screen.dart';
import 'all_orders_controller.dart';

class AllOrdersScreen extends StatelessWidget {
  AllOrdersScreen({super.key});
  final AllOrdersController controller = Get.find<AllOrdersController>()
    ..resetSearch()
    ..fetchData();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllOrdersController>(builder: (controller) {
      return Scaffold(
        backgroundColor: background,
        body: Padding(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 12.w, vertical: 12.h),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 288.w,
                    height: 36.h,
                    color: background,
                    child: SizedBox(
                      width: 332.w,
                      height: 36.h,
                      child: TextFormField(
                        onChanged: (text) {
                          controller.resetSearch();
                          controller.searchText = text;
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
                          color: secondary,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    width: 36.w,
                    height: 36.h,
                    decoration: ShapeDecoration(
                      color: lightGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          RichFoodIcons.calendar,
                          size: 18,
                          color: secondary,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              controller.saveCurrentSelectedDays();
                              return AlertDialog(
                                backgroundColor: Colors.transparent,
                                content: ChooseDaysDialog(),
                                contentPadding: EdgeInsetsDirectional.zero,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Obx(() {
                if (controller.days.isNotEmpty) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 12.h),
                      SelectedDaysBarWidget(controller: controller),
                    ],
                  );
                }
                return const SizedBox.shrink();
              }),
              SizedBox(height: 12.h),
              Expanded(child: Builder(builder: (BuildContext context) {
                if (controller.isLoading) {
                  return const LoadingIndicatorWidget();
                }
                if (controller.isError) {
                  return MyErrorWidget(
                    onTapped: controller.fetchData,
                  );
                }
                return RefreshIndicator(
                  onRefresh: controller.fetchData,
                  child: Builder(builder: (_) {
                    if (controller.ordersList.isEmpty) {
                      return const NoDataGeneralWidget(
                        message: 'لا يوجد طلبات',
                      );
                    }
                    if (controller.ordersList.isEmpty &&
                        controller.searchText.isNotEmpty) {
                      return const NoDataSearchWidget();
                    }
                    return Column(
                      children: [
                        Builder(
                          builder: (_) {
                            return Expanded(
                              child: ListView.separated(
                                controller: controller.scrollController,
                                itemCount: controller.ordersList.length + 1,
                                itemBuilder: (BuildContext context, int index) {
                                  if (index == controller.ordersList.length) {
                                    return Center(
                                      child: controller.isFetchingMore
                                          ? const LoadingIndicatorWidget()
                                          : const SizedBox(),
                                    );
                                  }
                                  OrderModel order =
                                      controller.ordersList[index];
                                  String phoneNumbers = '';
                                  phoneNumbers = getPhoneNumbers(
                                      order.customer, phoneNumbers);
                                  return InkWell(
                                    onTap: () {
                                      AllOrdersController controller =
                                          Get.find<AllOrdersController>();
                                      controller.orderId = order.id;
                                      controller.getOrderById().then((success) {
                                        if (success) {
                                          Get.to(() => OrderScreen());
                                        } else {
                                          showMessage(
                                              'Failed to load order', false);
                                        }
                                      });
                                    },
                                    child: OrderCustomerInfo(
                                      orderModel: order,
                                      phoneNumbers: phoneNumbers,
                                      onCancel: () {
                                        showConfirmationDialog(order);
                                      },
                                      onRevoke: () {
                                        controller.changeOrderStatus(
                                            action: 'accepted',
                                            orderId: order.id);
                                      },
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        const Gap(h: 12),
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  }),
                );
              })),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          onPressed: () {
            Get.find<AddOrderController>().clearCart();
            Get.to(() => SelectCustomerScreen(
                  isEditingOrder: false,
                  isChangingCustomer: false,
                ));
          },
          backgroundColor: blueTheme,
          child: Icon(Icons.add, color: white, size: 28.w),
        ),
      );
    });
  }

  Future<bool> showConfirmationDialog(OrderModel order) async {
    return await Get.dialog<bool>(
          CancelOrderDialog(
            onCancel: () {
              !controller.isLoadingChangeStatus ? Get.back() : null;
            },
            onConfirm: ([String? reason]) {
              controller
                  .changeOrderStatus(
                      action: 'canceled', orderId: order.id, reason: reason)
                  .then((value) {
                if (value) {
                  Get.back();
                  showMessage('تم إلغاء الطلب بنجاح', false);
                } else {
                  showMessage('فشل إلغاء الطلب', false);
                }
              });
            },
            customerName: order.customer.name,
            orderId: order.id.toString(),
          ),
          barrierDismissible: false,
        ) ??
        false;
  }
}

class SelectedDaysBarWidget extends StatelessWidget {
  const SelectedDaysBarWidget({
    super.key,
    required this.controller,
  });

  final AllOrdersController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 30.h,
          width: 310.w,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: days.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Gap(w: 4);
            },
            itemBuilder: (BuildContext context, int index) {
              final day = days[index];
              return Obx(() {
                final isSelected = controller.days.contains(index + 1);
                if (isSelected) {
                  return DayChip(
                    text: day,
                    isSelected: true,
                    onTap: () {},
                  );
                } else {
                  return const SizedBox
                      .shrink(); // Returns an empty widget when not selected
                }
              });
            },
          ),
        ),
        SizedBox(
          width: 24.w,
          height: 24.w,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: Icon(
              RichFoodIcons.remove,
              color: primary,
            ),
            onPressed: () {
              controller.days.clear();
              controller.applySelectedDays();
            },
          ),
        ),
      ],
    );
  }
}
