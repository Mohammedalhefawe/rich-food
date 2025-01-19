import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/add_order/select_customer_screen.dart';
import 'package:rich_food/modules/sales_man/features/orders/widgets/add_order_footer.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/shared/widgets/show_text_form_filed_counter.dart';
import 'package:rich_food/shared/widgets/snackBar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/phone_list_interpolater.dart';
import '../../../models/cart_item_model.dart';
import '../../../models/customer_model.dart';
import '../products/product_screen_add.dart';
import '../widgets/cart_product_tile.dart';
import '../../../../../shared/widgets/gap.dart';
import '../widgets/cart_customer_info.dart';
import 'add_order_controller.dart';

class AddOrderScreen extends StatelessWidget {
  AddOrderScreen({super.key});

  final AddOrderController controller = Get.find<AddOrderController>();

  @override
  Widget build(BuildContext context) {
    controller.getProducts();

    return Scaffold(
        backgroundColor: background,
        appBar: const CustomAppBar(
          title: 'إضافة طلب',
        ),
        body: GetBuilder<AddOrderController>(builder: (controller) {
          CustomerModel customer = controller.selectedCustomer;
          String phoneNumbers = '';
          phoneNumbers = getPhoneNumbers(customer, phoneNumbers);
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(
                children: [
                  // الزبون المحدد
                  CartCustomerInfo(
                    customerName: customer.name,
                    address: customer.address.area,
                    customerType: customer.customerTypeAr,
                    phoneNumbers: phoneNumbers,
                    onChangeCustomer: () {
                      Get.to(() => SelectCustomerScreen(
                            isEditingOrder: false,
                            isChangingCustomer: true,
                          ));
                      controller.update();
                    },
                  ),
                  // زر إضافة منتج
                  (controller.listProduct.isEmpty)
                      ? ListTile(
                          onTap: () => Get.to(() => const ProductScreenAdd()),
                          leading: Icon(
                            Icons.add,
                            size: 24.w,
                            color: primary,
                          ),
                          title: Text(
                            'إضافة منتج',
                            style: TextStyle(
                                color: primary,
                                fontFamily: MyDecorations.myFont,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        )
                      : Container(
                          height: 480.h,
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
                                        Get.to(() => const ProductScreenAdd());
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                                fontFamily:
                                                    MyDecorations.myFont,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
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
                              CartItemModel item =
                                  controller.listProduct[index];
                              return CartProductTile(
                                controller: controller,
                                item,
                                onRemove: () => controller.removeCartItem(item),
                                onIncrease: () =>
                                    controller.increaseQuantity(item),
                                onDecrease: () =>
                                    controller.decreaseQuantity(item),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) => const Gap(
                              h: 12,
                            ),
                          ),
                        ),
                ],
              ),
              ShowTextFormFiledCounter(
                controller: controller,
              )
            ],
          );
        }),
        bottomNavigationBar: GetBuilder<AddOrderController>(
          builder: (controller) {
            return AddOrderFooter(
              totalPrice: controller.totalPrice.toString(),
              deliveryDateTime: (controller.deliveryTime.isNotEmpty)
                  ? '${controller.deliveryTime} - ${controller.deliveryDate}'
                  : controller.deliveryDate,
              deliveryDayName: controller.dayName,
              onConfirmPressed: () {
                controller.listProduct.isEmpty
                    ? showMessage('لا يوجد منتجات بالطلب', true)
                    : controller.addOrder().then(
                        (value) {
                          if (value) {
                            Get.back();
                            showMessage('تم إضافة الطلب بنجاح', true);
                          }

                          // Get.to(() => OrderScreen());
                        },
                      );
              },
              onCancelPressed: () {
                controller.clearCart();
              },
            );
          },
        ));
  }
}
