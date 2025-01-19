import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/modules/customer/features/my_order/my_order_controller.dart';
import 'package:rich_food/modules/customer/features/products/widgets/customer_product_card_add.dart';
import 'package:rich_food/modules/customer/features/products/widgets/customer_state_order_widget.dart';
import 'package:rich_food/modules/customer/features/products/widgets/product_dialog.dart';
import 'package:rich_food/modules/customer/models/customer_products_model.dart';
import 'package:rich_food/shared/styles/rich_food_icons.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../shared/widgets/gap.dart';
import '../../../../shared/widgets/no_data_frizo/no_data_products.dart';
import '../cart/cart_controller.dart';
import '../cart/cart_screen.dart';
import '../my_order/my_order_screen.dart';
import 'customer_products_controller.dart';

class CustomerProductScreenAdd extends StatelessWidget {
  const CustomerProductScreenAdd({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find<CartController>();
    final CustomerProductsController productController =
        Get.find<CustomerProductsController>()..resetSearch();

    return GetBuilder<DrawerCustomerController>(
        init: DrawerCustomerController(),
        builder: (drawerCont) {
          return Scaffold(
            backgroundColor: background,
            appBar: PreferredSize(
              preferredSize: drawerCont.isSwitchedForShowTime
                  ? Size.fromHeight(122.h)
                  : Size.fromHeight(60.h),
              child: Column(
                children: [
                  if (drawerCont.isSwitchedForShowTime) ...[
                    Center(
                      child: Column(
                        children: [
                          Gap(
                            h: 12.h,
                          ),
                          CustomerStateOrderWidget(
                            typeTow: drawerCont.accessTime?.time == null,
                            isHaveOrder: drawerCont.accessTime != null,
                            textTime: drawerCont.accessTime?.time == null
                                ? drawerCont.accessTime?.date
                                : "${drawerCont.accessTime?.date}  ${drawerCont.accessTime?.time!}",
                          ),
                        ],
                      ),
                    ),
                  ],
                  Container(
                    width: 360.w,
                    height: 60.h,
                    color: background,
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 14.w, vertical: 12.h),
                    child: SizedBox(
                      width: 332.w,
                      // height: 36.h,
                      child: TextField(
                        onChanged: (text) {
                          productController.resetSearch();
                          productController.searchText = text;
                          productController.getProductList();
                        },
                        cursorColor: grey,
                        decoration: MyDecorations.searchInputDecoration(
                          icon: Icon(
                            Icons.search,
                            size: 20.w,
                            color: secondary,
                          ),
                          hint: "بحث",
                        ),
                        style: TextStyle(color: primary, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: GetBuilder<CustomerProductsController>(
              builder: (productController) {
                if (productController.isLoading &&
                    productController.productList.isEmpty) {
                  return const LoadingIndicatorWidget();
                }
                if (productController.isError &&
                    productController.productList.isEmpty) {
                  return Center(
                    child: MyErrorWidget(
                      onTapped: () {
                        productController.getProductList();
                        cartController.getNearestTrip();
                      },
                    ),
                  );
                }
                return RefreshIndicator(
                  color: blueTheme,
                  onRefresh: () async {
                    productController.resetSearch();
                    await productController.getProductList();
                    cartController.getNearestTrip();
                    Get.find<MyOrderController>().fetchData();
                  },
                  child: GetBuilder<MyOrderController>(builder: (orderCont) {
                    return ListView.separated(
                      shrinkWrap: true,
                      controller: productController.scrollCont1,
                      itemCount: productController.productList.length + 1,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 12.h,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        if (index == productController.productList.length) {
                          return Center(
                            child: productController.isFetchingMore
                                ? const LoadingIndicatorWidget()
                                : const SizedBox.shrink(),
                          );
                        }
                        if (productController.productList.isEmpty) {
                          return const NoDataProductsWidget(
                            message: "لا يوجد منتجات لعرضها",
                          );
                        }
                        CustomerProductModel productModel =
                            productController.productList[index];
                        bool isAdded = cartController.listProduct
                            .any((item) => item.productId == productModel.id);
                        return CustomerProductCardAdd(
                          productModel: productModel,
                          onAddToCart: () {
                            cartController.addToCart(productModel);
                          },
                          onRemoveFromCart: () {
                            var cartItem = cartController.listProduct
                                .firstWhere((item) =>
                                    item.productId == productModel.id);
                            cartController.removeCartItem(cartItem);
                          },
                          isAdded: isAdded,
                          hideAddToCart: orderCont.myOrder != null,
                          onCardPress: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ProductInfoDialog(productModel,
                                      withImage: (productModel.image != null));
                                });
                          },
                        );
                      },
                    );
                  }),
                );
              },
            ),
            floatingActionButton: GetBuilder<MyOrderController>(
                init: MyOrderController(),
                builder: (_) {
                  return SizedBox(
                    height: 62.w,
                    width: 62.w,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        FloatingActionButton(
                          elevation: 0.0,
                          onPressed: () {
                            (_.myOrder != null)
                                ? {Get.to(() => const MyOrderScreen())}
                                : {Get.to(() => CartScreen())};
                          },
                          backgroundColor: blueTheme,
                          child: Icon(RichFoodIcons.cart,
                              color: white, size: 28.w),
                        ),
                        if (_.myOrder?.status == 'canceled') ...[
                          const Positioned(
                              right: 0,
                              top: 0,
                              child: Icon(
                                Icons.error_outlined,
                                color: red,
                                size: 24,
                              )),
                        ],
                        // ...[CircleAvatar(backgroundColor: red, child: Center(child: Icon(Icons.error, color: white,)),),],
                      ],
                    ),
                  );
                }),
          );
        });
  }
}
