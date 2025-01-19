import 'package:flutter/material.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../models/products_model.dart';

class ProductOfOrderCard extends StatelessWidget {
  const ProductOfOrderCard(
    this.product,
    this.isCenter, {
    super.key,
  });

  final ProductModel product;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.h,
      width: 336.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: base,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        child: Row(
          children: [
            Container(
              height: 67.h,
              width: 66.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: base,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: (product.image != null)
                      ? NetworkImage(product.image!)
                      : const AssetImage('assets/images/no_image.png')
                          as ImageProvider,
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: MyDecorations.textStyle500(primary, 14),
                  ),
                  Text(
                    '${product.quantity} ${product.unit}',
                    style: MyDecorations.textStyle400(secondary, 12),
                  ),
                  Text(
                      '${isCenter ? product.centerPrice : product.shopPrice} ليرة',
                      style: MyDecorations.textStyle400(secondary, 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
