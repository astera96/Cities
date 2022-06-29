import 'package:cities/src/screens/city_view_detail.dart';
import 'package:cities/src/screens/mock_data.dart';
import 'package:cities/src/screens/models/cities_models.dart';
import 'package:flutter/material.dart';

class CityView extends StatelessWidget {
  const CityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Cities Of Kurdistan"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          const SizedBox(
            width: 10,
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: mockData.length,
                itemBuilder: (context, index) {
                  List<CityModel> _city = mockData.map(
                    (elemet) {
                      return CityModel.fromMap(elemet);
                    },
                  ).toList();

                  return GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(18),
                        height: 300,
                        width: 150,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRect(
                                //borderRadius: BorderRadius.circular(20),
                                child: Image.network(_city[index].cityIamge,
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              left: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 120,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent,
                                        ])),
                                child: Text(
                                  _city[index].cityName,
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )),
                    onTap: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => CityViewDetail(
                                city: _city[index],
                              )),
                        ),
                      ),
                    },
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
