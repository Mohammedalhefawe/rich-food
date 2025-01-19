class AreaModel {
  final int id;
  final int cityId;
  final String area;

  AreaModel({required this.id, required this.cityId, required this.area});

  factory AreaModel.fromJson(Map<String, dynamic> json) {
    return AreaModel(
      id: json["id"],
      cityId: json["city_id"],
      area: json["area"],
    );
  }
}
