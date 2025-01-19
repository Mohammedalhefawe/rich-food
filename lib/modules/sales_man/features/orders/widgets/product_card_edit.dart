import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/sales_man/features/orders/edit_order/edit_order_controller.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/shared/styles/colors.dart';
import '../../../models/products_model.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';

class EditProductCard extends StatelessWidget {
  final ProductModel productModel;
  final VoidCallback onAddToCart, onRemoveFromCart;
  final bool isAdded, isCenter;
  const EditProductCard({
    super.key,
    required this.productModel,
    required this.onAddToCart,
    required this.onRemoveFromCart,
    required this.isAdded,
    required this.isCenter,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 149.h,
      width: 336.w,
      margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: base,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 7,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 94.h,
                  width: 80.w,
                  child: (productModel.image != null)
                      ? Image.network(
                          productModel.image!,
                        )
                      : Image.asset('assets/images/no_image.png'),
                ),
                SizedBox(
                  height: 2.h,
                ),
                // price section
                SizedBox(
                  width: 80.w,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      isCenter
                          ? 'السعر: ${productModel.centerPrice} ل.س'
                          : '${productModel.shopPrice} ل.س',
                      style: MyDecorations.textStyle500(primary, 13),
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel.name,
                        style: MyDecorations.textStyle500(primary, 14),
                      ),
                      Text(
                        'واحدة البيع: ${productModel.unit}',
                        style: MyDecorations.textStyle400(secondary, 12),
                      ),
                      Text('المكونات: ${productModel.description}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: MyDecorations.textStyle400(secondary, 12)),
                    ],
                  ),
                  GetBuilder<EditOrderController>(builder: (controller) {
                    // return isAdded ?
                    return controller.listProductId.contains(productModel.id)
                        ? Padding(
                            padding: EdgeInsets.only(right: 108.w, top: 18.h),
                            child: InkWell(
                              onTap: onRemoveFromCart,
                              child: Container(
                                  width: 116.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    color: grey,
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        RichFoodIcons.remove,
                                        color: secondary,
                                        size: 16.w,
                                      ),
                                      Text(
                                        "إزالة من الطلب",
                                        textAlign: TextAlign.center,
                                        style: MyDecorations.textStyle500(
                                            secondary, 10),
                                      ),
                                    ],
                                  )),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(right: 108.w, top: 18.h),
                            child: InkWell(
                              onTap: onAddToCart,
                              child: Container(
                                  width: 116.w,
                                  height: 32.h,
                                  decoration: BoxDecoration(
                                    color: accent,
                                    borderRadius: BorderRadius.circular(4.r),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        RichFoodIcons.cart_add,
                                        color: blue,
                                        size: 16.w,
                                      ),
                                      Text(
                                        "إضافة إلى الطلب",
                                        textAlign: TextAlign.center,
                                        style: MyDecorations.textStyle500(
                                            blueTheme, 10),
                                      ),
                                    ],
                                  )),
                            ),
                          );
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
