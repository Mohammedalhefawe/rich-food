import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/products/product_controller.dart';
import 'package:rich_food/modules/sales_man/features/orders/widgets/product_card_add.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../shared/widgets/loading_indicator.dart';
import '../../../../../shared/widgets/my_error_widget.dart';
import '../../../models/products_model.dart';
import '../add_order/add_order_controller.dart';

class ProductScreenAdd extends StatelessWidget {
  const ProductScreenAdd({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final AddOrderController addOrderController =
        Get.find<AddOrderController>();
    final ProductsController controller = Get.find<ProductsController>()
      ..resetSearch();

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        addOrderController.getProducts();
        addOrderController.getCostOfCart();
      },
      child: Scaffold(
        backgroundColor: background,
        appBar: CustomAppBar(
          title: 'المنتجات',
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
                    // controller.resetSearch();
                    controller.searchText = text;
                    controller.getProductList();
                  },
                  cursorColor: grey,
                  decoration: MyDecorations.searchInputDecoration(
                    icon: const Icon(Icons.search, size: 20),
                    hint: "بحث",
                  ),
                  style: TextStyle(color: primary, fontSize: 12),
                ),
              ),
            ),
          ),
        ),
        body: GetBuilder<ProductsController>(
          builder: (controller) {
            if (controller.isLoading && controller.productList.isEmpty) {
              return const LoadingIndicatorWidget();
            }
            if (controller.isError && controller.productList.isEmpty) {
              return Center(
                child: MyErrorWidget(
                  onTapped: () {
                    controller.getProductList();
                  },
                ),
              );
            }
            return RefreshIndicator(
              color: blueTheme,
              onRefresh: () async {
                controller.resetSearch();
                await controller.getProductList();
              },
              child: ListView.builder(
                controller: controller.scrollController,
                itemCount: controller.productList.length + 1,
                itemBuilder: (BuildContext context, int index) {
                  if (index == controller.productList.length) {
                    return Center(
                      child: controller.isFetchingMore
                          ? const LoadingIndicatorWidget()
                          : const SizedBox(),
                    );
                  }
                  ProductModel productModel = controller.productList[index];
                  return AddProductCard(
                    productModel: productModel,
                    onAddToCart: () {
                      addOrderController.addToCart(productModel);
                    },
                    onRemoveFromCart: () {
                      addOrderController.removeFromCart(productModel);
                    },
                    isAdded: addOrderController.listProductId
                        .contains(productModel.id),
                    isCenter:
                        addOrderController.selectedCustomer.customerType ==
                            'center',
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
