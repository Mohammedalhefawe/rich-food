import '../../../utils/helpers/api/api_constants.dart';

class PriceModel {
  final int id;
  final String name;
  final String unit;
  final int shopPrice;
  final int centerPrice;
  final String? image;

  PriceModel({
    required this.id,
    required this.name,
    required this.shopPrice,
    required this.centerPrice,
    required this.unit,
    this.image,
  });

  factory PriceModel.fromJson(Map<String, dynamic> json) {
    String? imgUrl;
    if (json['image'] != null) {
      imgUrl = '${ApiConstants.serverUrl}${json['image']}';
    }
    return PriceModel(
      id: json['id'] as int,
      name: json['name'] ?? '',
      shopPrice: json['retail_price'] ?? 0,
      centerPrice: json['wholesale_price'] ?? 0,
      unit: (json['amount_unit'] == 'kg') ? 'كيلو' : 'قطعة',
      image: imgUrl,
    );
  }
}
