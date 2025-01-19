import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/cart/widgets/cart_footer.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../shared/widgets/custom_app_bar.dart';
import '../../../../shared/widgets/show_text_form_filed_counter.dart';
import '../../../../shared/widgets/snackBar.dart';
import '../../../sales_man/features/orders/widgets/cart_product_tile.dart';
import '../../../sales_man/models/cart_item_model.dart';
import '../my_order/my_order_controller.dart';
import 'cart_controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final CartController controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    // controller.getProducts();

    return Scaffold(
      backgroundColor: background,
      appBar: const CustomAppBar(
        title: 'السلة',
      ),
      body: GetBuilder<CartController>(builder: (controller) {
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
                      'السلة فارغة ',
                      style: MyDecorations.textStyle500(secondary, 24),
                    )
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 12.w, end: 12.w, top: 12.h),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    // height: 480.h,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 6.w),
                    child: ListView.separated(
                      itemCount: controller.listProduct.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == controller.listProduct.length) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.back();
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
                                          fontSize: 14.w),
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
                          controller: controller,
                          item,
                          onRemove: () => controller.removeCartItem(item),
                          onIncrease: () => controller.increaseQuantity(item),
                          onDecrease: () => controller.decreaseQuantity(item),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Gap(
                        h: 12,
                      ),
                    ),
                  ),
                  ShowTextFormFiledCounter(
                    controller: controller,
                  )
                ]),
              );
      }),
      floatingActionButton: GetBuilder<CartController>(builder: (context) {
        if (controller.listProduct.isNotEmpty) return const SizedBox.shrink();
        return Visibility(
          visible: (controller.listProduct.isEmpty),
          child: FloatingActionButton(
            elevation: 0.0,
            onPressed: () {
              Get.back();
            },
            backgroundColor: blueTheme,
            child: const Icon(Icons.add, color: white, size: 18),
          ),
        );
      }),
      bottomNavigationBar: GetBuilder<CartController>(
        builder: (controller) {
          if (controller.listProduct.isNotEmpty &&
              !controller.isWritByKeyboard) {
            return CartFooter(
              totalPrice: controller.totalPrice.toString(),
              deliveryDateTime: (controller.deliveryTime.isNotEmpty)
                  ? '${controller.deliveryTime ?? ''} - ${controller.deliveryDate ?? ''}'
                  : controller.deliveryDate ?? '',
              deliveryDayName: controller.dayName,
              onConfirmPressed: () {
                controller.listProduct.isEmpty
                    ? showMessage('لا يوجد منتجات بالطلب', true)
                    : controller.addOrder().then(
                        (value) {
                          if (value) {
                            Get.back();
                            showMessage('تم إضافة الطلب بنجاح', true);
                            Get.find<MyOrderController>().fetchData();
                          }

                          // Get.to(() => OrderScreen());
                        },
                      );
              },
              onCancelPressed: () {
                controller.clearCart();
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
