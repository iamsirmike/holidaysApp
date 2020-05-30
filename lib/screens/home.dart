import 'package:flutter/material.dart';
import 'package:travel_app/components/inputdecoration.dart';
import 'package:travel_app/components/topDestinationsdata.dart';
import 'package:travel_app/screens/details.dart';
import 'package:travel_app/utils/utils.dart';
import 'package:travel_app/components/popularplacesdata.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 820,
              child: Column(
                children: <Widget>[
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: screenHeight(context, 0.30),
                        width: screenWidth(context, 1),
                        color: UIColors.clolor1,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Where will you \ngo today?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/images/mike.jpeg'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: TextFormField(
                                    decoration: buildInputDecoration(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 165,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          width: screenWidth(context, 0.8),
                          height: screenHeight(context, 0.15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/plane.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight(context, 0.1),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Headings(
                          text1: 'Top places',
                          text2: 'View all',
                        ),
                      ),
                      Container(
                        height: screenHeight(context, 0.3),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Details(
                                      image: destinationsdata[index].img,
                                      name: destinationsdata[index].name,
                                      alias: destinationsdata[index].alias,
                                    );
                                  }));
                                },
                                child: Container(
                                  width: screenWidth(context, 0.4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          destinationsdata[index].img),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Spacer(),
                                        Text(
                                          destinationsdata[index].name,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          destinationsdata[index].alias,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            // fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: placesdata.length,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Headings(
                          text1: 'Popular places',
                          text2: 'View all',
                        ),
                      ),
                      Container(
                        height: screenHeight(context, 0.3),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: screenWidth(context, 0.4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(placesdata[index].img),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Spacer(),
                                      Text(
                                        placesdata[index].name,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        placesdata[index].alias,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          // fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: placesdata.length,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: screenHeight(context, 0.08),
        decoration: BoxDecoration(
          color: UIColors.clolor1,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.location_searching,
              color: Colors.grey,
            ),
            Icon(
              Icons.home,
              color: Colors.grey,
            ),
            Icon(
              Icons.star,
              color: Colors.grey,
            ),
            Icon(
              Icons.bookmark,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class Headings extends StatelessWidget {
  const Headings({
    this.text1,
    this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          text1,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          text2,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
