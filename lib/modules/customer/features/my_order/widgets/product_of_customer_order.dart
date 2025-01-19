import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rich_food/modules/customer/models/customer_products_model.dart';
import 'package:rich_food/shared/widgets/gap.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../shared/styles/rich_food_icons.dart';

class ProductCardView extends StatelessWidget {
  final CustomerProductModel productModel;

  const ProductCardView(this.productModel,{
    super.key,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: (productModel.image != null)
                          ? NetworkImage(productModel.image!)
                          : AssetImage('assets/images/no_image.png') as ImageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: 67.h,
                  width: 66.w,
                ),
              ],
            ),
            SizedBox(
              width: 8.w,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      productModel.name,
                      style: MyDecorations.textStyle500(primary, 14),
                    ),
                    Text(
                      'واحدة البيع: ${productModel.unit}',
                      style: MyDecorations.textStyle400(secondary, 12),
                    ),
                    Gap(h: 4,),
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        'المكونات: ${productModel.description}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: MyDecorations.textStyle400(secondary, 12),
                      ),
                    ),
                    // price section
                    Row(
                      children: [
                        Text(
                          'سعر القطعة: ',
                          style: MyDecorations.textStyle400(secondary, 12),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '${productModel.price} ل.س',
                            style: MyDecorations.textStyle400(secondary, 12),
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          (productModel.quantity! * productModel.price).toString() +" ل.س",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: MyDecorations.textStyle500(primary, 13),
                        ),
                        Text(
                          '${productModel.quantity} ${productModel.unit}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: MyDecorations.textStyle500(blueTheme, 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )

    );
  }
}
