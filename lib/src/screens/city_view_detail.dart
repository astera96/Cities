import 'package:flutter/material.dart';

class CityViewDetail extends StatelessWidget {
  const CityViewDetail(
      {Key? key,
      required this.cityImage,
      required this.cityInfo,
      required this.cityName})
      : super(key: key);
  final String cityName;
  final String cityImage;
  final String cityInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(cityImage),
              ),
            ],
          ),
          SizedBox(
            width: 5,
            height: 5,
          ),
          Row(
            children: [Text(cityName)],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(cityInfo),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
