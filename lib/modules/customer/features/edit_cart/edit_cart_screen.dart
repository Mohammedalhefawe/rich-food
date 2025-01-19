import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/edit_cart/widgets/edit_cart_footer.dart';
import 'package:rich_food/modules/customer/features/my_order/my_order_controller.dart';
import 'package:rich_food/modules/customer/models/customer_order_model.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/shared/widgets/show_text_form_filed_counter.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/date_to_day_name.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../shared/styles/rich_food_icons.dart';
import '../../../sales_man/features/orders/widgets/cart_product_tile.dart';
import '../../../sales_man/models/cart_item_model.dart';
import '../products/customer_product_screen_edit.dart';
import 'edit_cart_controller.dart';

class EditCartScreen extends StatelessWidget {
  final CustomerOrderModel order;

  EditCartScreen({super.key, required this.order});

  final EditCartController controller = Get.find<EditCartController>();

  @override
  Widget build(BuildContext context) {
    controller.initializeWithOrder(order);

    return Scaffold(
      backgroundColor: background,
      appBar: const CustomAppBar(title: 'تعديل الطلب'),
      body: GetBuilder<EditCartController>(
        builder: (controller) {
          return (controller.listProduct.isEmpty)
              ? Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  RichFoodIcons.cart,
                  color: secondary,
                  size: 128.w,
                ),
                const Gap(h: 16),
                Text(
                  'السلة فارغة',
                  style: MyDecorations.textStyle500(secondary, 24),
                ),
              ],
            ),
          )
              : Padding(
            padding: EdgeInsetsDirectional.only(
                start: 12.w, end: 12.w, top: 12.h),
            child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                Container(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
                  child: ListView.separated(
                    itemCount: controller.listProduct.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == controller.listProduct.length) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => const CustomerProductScreenEdit());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: primary,
                                    size: 16,
                                  ),
                                  Text(
                                    'إضافة منتج',
                                    style: TextStyle(
                                      color: primary,
                                      fontFamily: MyDecorations.myFont,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(h: 16),
                          ],
                        );
                      }

                      CartItemModel item = controller.listProduct[index];
                      return CartProductTile(
                        item,
                        controller: controller,
                        onIncrease: () => controller.increaseQuantity(item),
                        onDecrease: () => controller.decreaseQuantity(item),
                        onRemove: () => controller.removeCartItem(item),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) => const Gap(h: 6),
                  ),
                ),
                ShowTextFormFiledCounter(controller: controller),
                            ],
                          ),
              );
        },
      ),
      floatingActionButton: GetBuilder<EditCartController>(
        builder: (context) {
          if (controller.listProduct.isEmpty) {
            return FloatingActionButton(
              elevation: 0.0,
              onPressed: () {
                Get.to(() => const CustomerProductScreenEdit());
              },
              backgroundColor: blueTheme,
              child: Icon(Icons.add, color: white, size: 28.w),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      bottomNavigationBar: GetBuilder<EditCartController>(
        builder: (controller) {
          if (controller.listProduct.isNotEmpty) {
            return EditCartFooter(
              totalPrice: controller.totalPrice.toString(),
              deliveryDateTime: (controller.deliveryTime.isNotEmpty)
                  ? '${controller.deliveryTime ?? ''} - ${controller.deliveryDate ?? ''}'
                  : controller.deliveryDate ?? '',
              deliveryDayName: getArabicDayName(order.deliveryDate),
              onConfirmPressed: () {
                controller.listProduct.isEmpty
                    ? showMessage('لا يوجد منتجات بالطلب', true)
                    : controller.updateOrder().then((value) {
                  if (value) {
                    Get.back(result: true);
                    showMessage('تم تعديل الطلب بنجاح', true);
                    // Get.find<MyOrderController>().fetchData();
                  } else {
                    showMessage('فشل تعديل الطلب', false);
                  }
                });
              },
              onCancelPressed: () {
                Get.back();
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}


/*class EditCartScreen extends StatelessWidget {
  final CustomerOrderModel order;

  EditCartScreen({super.key, required this.order});

  final EditCartController controller = Get.find<EditCartController>();

  @override
  Widget build(BuildContext context) {
    // Initialize the controller with the existing order data
    controller.initializeWithOrder(order);

    return Scaffold(
      backgroundColor: background,
      appBar: const CustomAppBar(
        title: 'تعديل الطلب',
      ),
      body: GetBuilder<EditCartController>(
        builder: (controller) {
          return (controller.listProduct.isEmpty)
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        RichFoodIcons.cart,
                        color: secondary,
                        size: 128.w,
                      ),
                      const Gap(
                        h: 16,
                      ),
                      Text(
                        'السلة فارغة',
                        style: MyDecorations.textStyle500(secondary, 24),
                      )
                    ],
                  ),
                )
              : Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      // height: 480.h,
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 12.w),
                      child: ListView.separated(
                        itemCount: controller.listProduct.length + 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == controller.listProduct.length) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() =>
                                        const CustomerProductScreenEdit());
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: primary,
                                        size: 16,
                                      ),
                                      Text(
                                        'إضافة منتج',
                                        style: TextStyle(
                                          color: primary,
                                          fontFamily: MyDecorations.myFont,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Gap(
                                  h: 16,
                                ),
                              ],
                            );
                          }

                          CartItemModel item = controller.listProduct[index];
                          return CartProductTile(
                            item,
                            controller: controller,
                            onIncrease: () => controller.increaseQuantity(item),
                            onDecrease: () => controller.decreaseQuantity(item),
                            onRemove: () => controller.removeCartItem(item),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Gap(h: 12),
                      ),
                    ),
                    ShowTextFormFiledCounter(
                      controller: controller,
                    )
                  ],
                );
        },
      ),
      floatingActionButton: GetBuilder<EditCartController>(builder: (context) {
        if (controller.listProduct.isEmpty) {
          return FloatingActionButton(
            elevation: 0.0,
            onPressed: () {
              Get.to(() => const CustomerProductScreenEdit());
            },
            backgroundColor: blueTheme,
            child: Icon(Icons.add, color: white, size: 28.w),
          );
        } else {
          return const SizedBox.shrink();
        }
      }),
      bottomNavigationBar: GetBuilder<EditCartController>(
        builder: (controller) {
          if (controller.listProduct.isNotEmpty) {
            return EditCartFooter(
              totalPrice: controller.totalPrice.toString(),
              deliveryDateTime: '${order.deliveryTime} - ${order.deliveryDate}',
              deliveryDayName: getArabicDayName(order.deliveryDate),
              onConfirmPressed: () {
                controller.listProduct.isEmpty
                    ? showMessage('لا يوجد منتجات بالطلب', true)
                    : controller.updateOrder().then(
                        (value) {
                          Get.back();
                          showMessage('تم تعديل الطلب بنجاح', true);
                          Get.find<MyOrderController>().fetchData();
                        },
                      );
              },
              onCancelPressed: () {
                Get.back();
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}*/
