import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/semantics.dart';
import 'login.dart';

class PlaceholderWidget extends StatefulWidget {
  String title;
  Color color;
  PlaceholderWidget(this.title, this.color);

  @override
  _PlaceholderWidgetState createState() => _PlaceholderWidgetState();
}
class _PlaceholderWidgetState extends State<PlaceholderWidget> {
String title;
double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 0;
  double rateNine = -400;

  String asset;
  double top;

 @override
 Widget build(BuildContext context) {
   return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color(0xffFFAF1B),
        middle: Text(widget.title),
      ),
      child: NotificationListener(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            //only if scroll update notification is triggered

            setState(() {
              rateNine += v.scrollDelta;
              rateEight -= v.scrollDelta / 1;
              rateSeven -= v.scrollDelta / 1.1;
              rateSix -= v.scrollDelta / 1.2;
              rateFive -= v.scrollDelta / 1.5;
              rateFour -= v.scrollDelta / 2.5;
              rateThree -= v.scrollDelta / 3.5;
              rateTwo -= v.scrollDelta / 4;
              rateOne -= v.scrollDelta / 4.5;
              rateZero -= v.scrollDelta / 5;
            });
          }
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: -250,
              child: Container(
                height: 400,
                width: 1100,
                color: Color(0xffFFAF1B),
              ),
            ),
            ParallaxWidget(top: rateZero, asset: "parallax0"),
            ParallaxWidget(top: rateOne, asset: "parallax1"),
            ParallaxWidget(top: rateTwo, asset: "parallax2"),
            ParallaxWidget(top: rateThree, asset: "parallax3"),
            ParallaxWidget(top: rateFour, asset: "parallax4"),
            ParallaxWidget(top: rateFive, asset: "parallax5"),
            ParallaxWidget(top: rateSix, asset: "parallax6"),
            ParallaxWidget(top: rateSeven, asset: "parallax7"),
            Positioned(
              bottom: rateNine,
              left: -250,
              child: Container(
                height: 400,
                width: 1100,
                color: Color(0xff210002),
              ),
            ),
            ParallaxWidget(top: rateEight, asset: "parallax8"),
            ListView(
              children: <Widget>[
                Container(
                  height: 300,
                  color: Colors.transparent,
                ),
                Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 250,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 240,
                        height: 70,
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
 }
