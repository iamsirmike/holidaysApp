import 'package:flutter/material.dart';
import 'package:travel_app/utils/utils.dart';

class Details extends StatefulWidget {
  final String image;
  final String name;
  final String alias;

  const Details({this.image, this.name, this.alias});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: screenHeight(context, 1),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.image),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width: screenWidth(context, 1),
                      height: screenHeight(context, 0.7),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              widget.alias,
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: UIColors.clolor1),
                                Icon(Icons.star, color: UIColors.clolor1),
                                Icon(Icons.star, color: UIColors.clolor1),
                                Icon(Icons.star, color: UIColors.clolor1),
                                Icon(Icons.star_half, color: UIColors.clolor1),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'Lorem ipsum dolor sit amet, consectuer adipicing elir. Donec odio, Quashie volupat mattis eros. Nullam malesuada eart etu tupid. Suspendafe iran nibh, viveerra nonm samper svudsddt posuere a pede.',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[600],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '\$570',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('(3 days 2 nights)'),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: screenWidth(context, 1),
                              height: screenHeight(context, 0.07),
                              child: RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                color: UIColors.clolor1,
                                child: Text('BOOK YOUR TRIP'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 210,
                      bottom: 430,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.favorite, color: UIColors.clolor1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
