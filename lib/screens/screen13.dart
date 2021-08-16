import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen14.dart';

//---------------OverAll performance/Screen13----------------//
//note inorder to make this work click pud.get in pubspec.yml

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);
// final

class Screen13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: CusBar('Performance'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Overall Performance',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            CircleIndicator(),          //created a Circle Indicator definr below
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).
                 push(MaterialPageRoute(builder: (contex) => Screen14()));
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 130, right: 130, top: 20, bottom: 20)),
                    elevation: MaterialStateProperty.all(7),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: BorderSide(color: Colors.red)
                    ))),
                child: Text('View Details')),
          ],
        ),
      ),
    ));
  }
}

//------------------function------------------//
//note inorder to make this work click pud.get in pubspec.yml

class CircleIndicator extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 250,
      lineWidth: 14,
      backgroundColor: lightPink,
      percent: 0.72,
      progressColor: darkRed,
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      center: Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: darkRed,
          ),
          child: Center(
              child: Text(
            '72/100',
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
