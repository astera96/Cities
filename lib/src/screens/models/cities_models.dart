class CityModel {
  final int id;
  final String cityName;
  final String cityIamge;
  String? cityInfo;

  CityModel({
    required this.id,
    required this.cityName,
    required this.cityIamge,
    this.cityInfo,
  });

  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
        id: map["id"],
        cityName: map["cityName"],
        cityIamge: map["cityIamge"],
        cityInfo: map["cityInfo"]);
  }
}
