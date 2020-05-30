import 'package:flutter/material.dart';
import 'package:travel_app/utils/utils.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: screenHeight(context, 0.3),
                  width: screenWidth(context, 1),
                  color: UIColors.clolor1,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'Let\'s find your \nBest vacation.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  left: 35,
                  child: Container(
                    height: screenHeight(context, 0.5),
                    width: screenWidth(context, 0.8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: UIColors.clolor1,
                            offset: Offset(0, 0),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Image.asset(
                        'assets/images/img1.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
              height: screenHeight(context, 0.12),
              width: screenWidth(context, 1),
              child: OutlineButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
                color: Colors.white,
                borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: Colors.grey,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text('SIGN IN'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
              height: screenHeight(context, 0.12),
              width: screenWidth(context, 1),
              child: RaisedButton(
                onPressed: () {},
                color: UIColors.clolor1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text('CREATE NEW ACCOUNT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
