import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/all_orders/all_orders_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/edit_order/edit_order_controller.dart';
import 'package:rich_food/modules/sales_man/models/order_model.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/shared/widgets/show_text_form_filed_counter.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/utils/services/date_to_day_name.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/snackBar.dart';
import '../../../../../utils/services/phone_list_interpolater.dart';
import '../../../models/cart_item_model.dart';
import '../add_order/select_customer_screen.dart';
import '../products/product_screen_edit.dart';
import '../widgets/cart_customer_info.dart';
import '../widgets/cart_product_tile.dart';
import '../widgets/edit_order_footer.dart';

class EditOrderScreen extends StatelessWidget {
  final OrderModel order;

  EditOrderScreen({super.key, required this.order});

  final EditOrderController controller = Get.find<EditOrderController>();

  @override
  Widget build(BuildContext context) {
    // Initialize the controller with the existing order data
    controller.initializeWithOrder(order);

    return Scaffold(
      backgroundColor: background,
      appBar: const CustomAppBar(
        title: 'تعديل الطلب',
      ),
      body: GetBuilder<EditOrderController>(
        builder: (controller) {
          String phoneNumbers = order.customer.contacts != null
              ? (order.customer.contacts![0].phoneNumber.toString())
              : 'غير متوفر';
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(
                children: [
                  // Customer Info
                  CartCustomerInfo(
                    customerName: controller.selectedCustomer.name,
                    customerType: controller.selectedCustomer.customerTypeAr,
                    address: controller.selectedCustomer.address.area ??
                        'لا يوجد عنوان',
                    phoneNumbers: getPhoneNumbers(
                        controller.selectedCustomer, phoneNumbers),
                    onChangeCustomer: () {
                      Get.to(() => SelectCustomerScreen(
                            isEditingOrder: true,
                            isChangingCustomer: true,
                          ));
                    },
                  ),

                  // Product List
                  Container(
                    height: 480.h,
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 12.w),
                    child: ListView.separated(
                      itemCount: controller.listProduct.length + 1,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == controller.listProduct.length) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => const ProductScreenEdit());
                                },
                                child: SizedBox(
                                  height: 50.h,
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
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
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
                          onIncrease: () => controller.increaseQuantity(item),
                          onDecrease: () => controller.decreaseQuantity(item),
                          onRemove: () => controller.removeFromCart(item),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Gap(h: 12),
                    ),
                  ),
                ],
              ),
              ShowTextFormFiledCounter(
                controller: controller,
              )
            ],
          );
        },
      ),
      bottomNavigationBar: GetBuilder<EditOrderController>(
        builder: (controller) {
          return Visibility(
            visible: !controller.isWritByKeyboard,
            child: EditOrderFooter(
              totalPrice: controller.totalPrice.toString(),
              deliveryDateTime: (controller.deliveryTime.isNotEmpty)
                  ? '${controller.deliveryTime ?? ''} - ${controller.deliveryDate ?? ''}'
                  : controller.deliveryDate ?? '',
              deliveryDayName: getArabicDayName(order.deliveryDate),
              onConfirmPressed: () {
                controller.listProduct.isEmpty
                    ? showMessage('لا يوجد منتجات بالطلب', true)
                    : controller.updateOrder().then(
                        (value) {
                          if (value) {
                            Get.back();
                            showMessage('تم تعديل الطلب بنجاح', true);
                            Get.find<AllOrdersController>().fetchData();
                          }
                          // Get.to(() => OrderScreen());
                        },
                      );
              },
              onCancelPressed: () {
                Get.back();
              },
            ),
          );
        },
      ),
    );
  }
}
