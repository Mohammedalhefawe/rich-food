import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rich_food/shared/styles/decoration.dart';
import 'package:rich_food/utils/extensions/number_formatter.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import '../../../../../shared/styles/colors.dart';
import '../../../models/cart_item_model.dart';

class CartProductTile extends StatelessWidget {
  final CartItemModel cartItem;
  final controller;
  final VoidCallback onIncrease, onDecrease, onRemove;
  const CartProductTile(
    this.cartItem, {
    super.key,
    required this.onIncrease,
    required this.onDecrease,
    required this.onRemove,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    ImageProvider<Object> imageProvider = (cartItem.image.isNotEmpty)
        ? NetworkImage(cartItem.image)
        : const AssetImage('assets/images/no_image.png')
            as ImageProvider<Object>;
    return Container(
      width: 336.w,
      height: 153.h,
      padding:
          EdgeInsetsDirectional.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: base,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 7,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Container(
            width: 66.w,
            height: 67.h,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: imageProvider,
                // image:(cartItem.image != null) ? NetworkImage(cartItem.image) : AssetImage('assets/images/no_image.png') as ImageProvider<Object>,
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          SizedBox(
            width: 238.w,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProductInfo(
                  cartItem: cartItem,
                  onRemove: onRemove,
                ),
                SizedBox(height: 4.h),
                _ProductDetails(
                  ingredients: cartItem.ingredients,
                  price: cartItem.price.formatWithCommas(),
                  unit: cartItem.unit,
                ),
                SizedBox(height: 8.h),
                _QuantityControl(
                  controller: controller,
                  cartItem: cartItem,
                  quantity: cartItem.quantity,
                  onIncrement: onIncrease,
                  onDecrement: onDecrease,
                  unit: cartItem.unit,
                  price: cartItem.price,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductInfo extends StatelessWidget {
  final CartItemModel cartItem;
  final VoidCallback onRemove;
  const _ProductInfo({
    required this.cartItem,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 238.w,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 85,
                child: Text(
                  cartItem.name,
                  maxLines: 1,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: primary,
                    fontSize: 14,
                    fontFamily: MyDecorations.myFont,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 8),
                child: InkWell(
                  onTap: onRemove,
                  child: Text(
                    'إزالة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: secondary,
                      fontSize: 10,
                      fontFamily: MyDecorations.myFont,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          'واحدة البيع: ${cartItem.unit}',
          maxLines: 1,
          style: TextStyle(
            color: secondary,
            fontSize: 12,
            fontFamily: MyDecorations.myFont,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _ProductDetails extends StatelessWidget {
  final String ingredients;
  final String price;
  final String unit;

  const _ProductDetails({
    required this.ingredients,
    required this.price,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200.w,
          child: Text(
            'المكونات: $ingredients',
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              color: secondary,
              fontSize: 12,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Text(
          'سعر ال$unit: $price ل.س',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            color: secondary,
            fontSize: 12,
            fontFamily: MyDecorations.myFont,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _QuantityControl extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final String unit;
  final double price;
  final controller;
  final CartItemModel cartItem;
  const _QuantityControl({
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.unit,
    required this.price,
    required this.cartItem,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    String formattedPrice = NumberFormat("#,##0.##").format(quantity * price);

    return SizedBox(
      width: 238.w,
      height: 25.h,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$formattedPrice ل.س',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: primary,
              fontSize: 13,
              fontFamily: MyDecorations.myFont,
              fontWeight: FontWeight.w500,
              height: 0.14,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: onIncrement,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: const Color(0x3373A3D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: blueTheme,
                    size: 16,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  //moh
                  controller.currentCartItemModel = cartItem;
                  if (!controller.isWritByKeyboard) {
                    controller.changeStateKeyboard();
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: SizedBox(
                    width: 66.w,
                    height: 24.h,
                    child: Text(
                      '$quantity $unit',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: primary,
                        fontSize: 12,
                        fontFamily: MyDecorations.myFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: onDecrement,
                child: Container(
                  width: 24.w,
                  height: 24.h,
                  decoration: ShapeDecoration(
                    color: grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Icon(
                    Icons.remove,
                    color: secondary,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
