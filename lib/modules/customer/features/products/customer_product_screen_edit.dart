import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/drawer/drawer_customer_controller.dart';
import 'package:rich_food/modules/customer/features/edit_cart/edit_cart_controller.dart';
import 'package:rich_food/modules/customer/features/products/widgets/customer_product_card_edit.dart';
import 'package:rich_food/modules/customer/features/products/widgets/product_dialog.dart';
import 'package:rich_food/modules/customer/models/customer_products_model.dart';
import 'package:rich_food/shared/widgets/custom_app_bar.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../../shared/widgets/no_data_frizo/no_data_products.dart';
import 'customer_products_controller.dart';

class CustomerProductScreenEdit extends StatelessWidget {
  const CustomerProductScreenEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final EditCartController cartController = Get.find<EditCartController>();
    final CustomerProductsController productController =
        Get.find<CustomerProductsController>()..resetSearch();

    return GetBuilder<DrawerCustomerController>(
        init: DrawerCustomerController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: background,
            appBar: CustomAppBar(
              title: 'تعديل الطلب',
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
                      onChanged: (text) {
                        productController.resetSearch();
                        productController.searchText = text;
                        productController.getProductList();
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
                      style: TextStyle(color: primary, fontSize: 12),
                    ),
                  ),
                ),
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
                  },
                  child: ListView.builder(
                    controller: productController.scrollCont2,
                    itemCount: productController.productList.length + 1,
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
                      return CustomerProductCardEdit(
                        productModel: productModel,
                        onAddToCart: () {
                          cartController.addToCart(productModel);
                        },
                        onRemoveFromCart: () {
                          var cartItem = cartController.listProduct.firstWhere(
                              (item) => item.productId == productModel.id);
                          cartController.removeCartItem(cartItem);
                        },
                        isAdded: isAdded,
                        hideAddToCart: false,
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
                  ),
                );
              },
            ),
          );
        });
  }
}
