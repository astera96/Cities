import 'package:cities/src/screens/mock_data.dart';
import 'package:cities/src/screens/models/cities_models.dart';
import 'package:flutter/material.dart';

class CityViewDetail extends StatelessWidget {
  const CityViewDetail({
    Key? key,
    required this.city,
  }) : super(key: key);
  final CityModel city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // ama appbar nia balam bar sabt lasarawa boxoy drust akat
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(city.cityIamge),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
            height: 5,
          ),
          Row(
            children: [
              Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                  child: Text(city.cityName))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(city.cityInfo!),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
