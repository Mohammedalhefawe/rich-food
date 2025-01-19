import 'package:flutter/material.dart';
import 'package:rich_food/modules/customer/models/customer_products_model.dart';
import 'package:rich_food/shared/styles/colors.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/responsive.dart';

import '../../../../../shared/widgets/gap.dart';

class ProductInfoDialog extends StatelessWidget {
  const ProductInfoDialog(this.productModel,
      {super.key, required this.withImage});
  final bool withImage;
  final CustomerProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 340.w,
        // height: (withImage) ? 419.h : 193.h,
        padding: EdgeInsets.only(
          top: 16.h,
          left: 12.w,
          right: 12.w,
          bottom: 24.h,
        ),
        decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: background)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (withImage) ...[
              ProductImage(productModel.image!),
              const Gap(h: 8),
            ],
            ProductDetails(productModel),
          ],
        ),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage(this.imgUrl, {super.key});
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 316.w,
      height: 218.h,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails(this.product, {super.key});
  final CustomerProductModel product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 153.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: TextStyle(
              color: secondary,
              fontSize: 16.w,
              fontFamily: 'Noto Kufi Arabic',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 4.h),
          UnitRow(product.unit),
          const Gap(
            h: 4,
          ),
          ProductDescription(product.description),
          const Gap(
            h: 4,
          ),
          PriceRow(product.price),
        ],
      ),
    );
  }
}

class UnitRow extends StatelessWidget {
  const UnitRow(this.unit, {super.key});
  final String unit;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 27.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'واحدة البيع:',
            style: TextStyle(
              color: const Color(0xFF5A5A5A),
              fontSize: 14.w,
              fontFamily: 'Noto Kufi Arabic',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 4.w),
          Text(
            unit,
            style: TextStyle(
              color: const Color(0xFF5A5A5A),
              fontSize: 14.w,
              fontFamily: 'Noto Kufi Arabic',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductDescription extends StatelessWidget {
  const ProductDescription(this.description, {super.key});
  final String description;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 317.w,
      child: Text(
        description,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: const Color(0xFF5A5A5A),
          fontSize: 14.w,
          fontFamily: 'Noto Kufi Arabic',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

class PriceRow extends StatelessWidget {
  const PriceRow(this.price, {super.key});
  final int price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'السعر: ',
          style: TextStyle(
            color: blueTheme,
            fontSize: 14.w,
            fontFamily: MyDecorations.myFont,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 4.w),
        SizedBox(
          width: 112.w,
          child: Text(
            '$price ل.س',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: blueTheme,
              fontSize: 14.w,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
