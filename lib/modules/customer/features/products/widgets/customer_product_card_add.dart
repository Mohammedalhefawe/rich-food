import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/features/cart/cart_controller.dart';
import 'package:rich_food/shared/styles/theme/app_theme.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';
import '../../../models/customer_products_model.dart';

class CustomerProductCardAdd extends StatelessWidget {
  final CustomerProductModel productModel;
  final VoidCallback onAddToCart, onRemoveFromCart, onCardPress;
  final bool isAdded, hideAddToCart;
  CustomerProductCardAdd({
    super.key,
    required this.productModel,
    required this.onAddToCart,
    required this.onRemoveFromCart,
    required this.isAdded,
    required this.onCardPress,
    required this.hideAddToCart,
  });
  final CartController controller = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 149.h,
      width: 336.w,
      margin: EdgeInsets.symmetric(horizontal: 12.w),
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
      child: InkWell(
        onTap: onCardPress,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 96.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: base,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: (productModel.image != null)
                            ? NetworkImage(productModel.image!)
                            : const AssetImage(
                                    'assets/images/customer_no_img.png')
                                as ImageProvider,
                      ),
                    ),
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
                        '${productModel.price} ل.س',
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
              Column(
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
                      const Gap(
                        h: 3,
                      ),
                      Text(
                        'واحدة البيع: ${productModel.unit}',
                        style: MyDecorations.textStyle400(secondary, 12),
                      ),
                      const Gap(
                        h: 8,
                      ),
                      SizedBox(
                        width: 200.w,
                        child: Text('المكونات: ${productModel.description}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: MyDecorations.textStyle400(secondary, 12)),
                      ),
                    ],
                  ),
                  if (!hideAddToCart) ...[
                    GetBuilder<CartController>(builder: (controller) {
                      return controller.listProductId.contains(productModel.id)
                          ? Padding(
                              padding: EdgeInsets.only(right: 108.w, top: 18),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          RichFoodIcons.remove,
                                          color: secondary,
                                          size: 16,
                                        ),
                                        Text(
                                          "إزالة من السلة",
                                          textAlign: TextAlign.center,
                                          style: MyDecorations.textStyle500(
                                              secondary, 10),
                                        ),
                                      ],
                                    )),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.only(right: 108.w, top: 18),
                              child: InkWell(
                                onTap: onAddToCart,
                                child: Container(
                                    width: 116.w,
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                      color: AppTheme.isDark
                                          ? accent.withOpacity(0.2)
                                          : accent,
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          RichFoodIcons.cart_add,
                                          color: blueTheme,
                                          size: 16,
                                        ),
                                        Text(
                                          "إضافة إلى السلة",
                                          textAlign: TextAlign.center,
                                          style: MyDecorations.textStyle500(
                                              blueTheme, 10),
                                        ),
                                      ],
                                    )),
                              ),
                            );
                    })
                  ]
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
