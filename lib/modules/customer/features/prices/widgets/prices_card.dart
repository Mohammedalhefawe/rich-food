import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rich_food/utils/extensions/responsive.dart';
import 'package:rich_food/shared/styles/colors.dart';
import '../../../../../shared/styles/decoration.dart';
import '../../../../../utils/helpers/cacheKeys.dart';
import '../../../../sales_man/models/price_model.dart';

class CustomerPriceCard extends StatelessWidget {
  CustomerPriceCard(
    this.priceModel, {
    super.key,
  });
  final GetStorage storage = GetStorage();

  final PriceModel priceModel;
  @override
  Widget build(BuildContext context) {
    String customerType = storage.read(CacheKeys.customerType) ?? "";
    return Container(
      height: 97.h,
      width: 360.w,
      color: background,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        child: Row(
          children: [
            Container(
              height: 71.h,
              width: 72.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: base,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: (priceModel.image != null)
                      ? NetworkImage(priceModel.image!)
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
                    priceModel.name,
                    style: MyDecorations.textStyle500(primary, 14),
                  ),
                  Text(
                    priceModel.unit,
                    style: MyDecorations.textStyle400(secondary, 12),
                  ),
                  Text(
                      customerType == "shop"
                          ? "${priceModel.centerPrice}  ل.س  "
                          : "${priceModel.shopPrice}  ل.س  ",
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
