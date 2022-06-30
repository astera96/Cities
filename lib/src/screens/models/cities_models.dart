// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
//in database we have  (read,write,delet,update)

// to create constructor
class CityModel {
  final int id;
  final String cityName;
  final String cityIamge;
  String? cityInfo;

//inishalize constructor
  CityModel({
    required this.id,
    required this.cityName,
    required this.cityIamge,
    this.cityInfo,
  });

// to create any object from map data
//to READ data form map
  factory CityModel.fromMap(Map<String, dynamic> map) {
    return CityModel(
      //id:map['id]?.toInt()??0
      // ? wata maybe null bet ,?? wata agar null bu chi bo bkam

      //be duflut awa bom drust akat ????
      // id: map['id'] as int,
      // cityName: map['cityName'] as String,
      // cityIamge: map['cityIamge'] as String,
      // cityInfo: map['cityInfo'] != '' ? map['cityInfo'] as String : '',
      // ama aalet maybe null bet,agar null by chi bkam alet null bdawa

      id: map['id']?.toInt() ?? 0,
      cityName: map['cityName'] ?? '',
      cityIamge: map['cityIamge'] ?? '',
      cityInfo: map['cityInfo'] != '' ? map['cityInfo'] as String : '',
    );
  }

  // am copyWith bo awaya agar data la database gora kesrash bot bgoret , wak email
  // agar user email gory am copyWith bot drust akat
//bo nmuna product haya atawawt s3rakay bgory leara aikay
// to UPDATE data from map
  CityModel copyWith({
    int? id,
    String? cityName,
    String? cityIamge,
    String? cityInfo,
  }) {
    return CityModel(
      id: id ?? this.id,
      cityName: cityName ?? this.cityName,
      cityIamge: cityIamge ?? this.cityIamge,
      cityInfo: cityInfo ?? this.cityInfo,
    );
  }

  // to create object form map
  // to WRITE data in database
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'cityName': cityName,
      'cityIamge': cityIamge,
      'cityInfo': cityInfo,
    };
  }

  // if you want convert your object to json should use this method
  String toJson() => json.encode(toMap());

  //the data you want to read from an API is of Json most of time
  //to read it from json use named constructor
  factory CityModel.fromJson(String source) =>
      CityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CityModel(id: $id, cityName: $cityName, cityIamge: $cityIamge, cityInfo: $cityInfo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CityModel &&
        other.id == id &&
        other.cityName == cityName &&
        other.cityIamge == cityIamge &&
        other.cityInfo == cityInfo;
  }

// for data Encrypte
  @override
  int get hashCode {
    return id.hashCode ^
        cityName.hashCode ^
        cityIamge.hashCode ^
        cityInfo.hashCode;
  }
}
