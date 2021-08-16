import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

//---------------Checkin History/Screen37----------------//

final darkRed = Color(0xffbf2634);

String name = 'Member Name';
String date = '02-05-2021 Thu';
String timeIN = 'Checkin: 09:25am';
String timeOUT = 'Checkout: 06:00pm';
String content = 'Total Working Hours: 8hr 20min';
String late = 'Late';
String onT = 'On Time';

final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);
final time = Text('On time');
final latetime = Text('Late');

// ignore: camel_case_types
class Screen37 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Check History'),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: LinearBar(),     //called from below
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: null,
                  child: Container(
                      child: Row(
                    children: [
                      Text('Filter',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Icon(Icons.tune),
                    ],
                  )),
                ),
              ],
            ),
            MiNewCard(onT),
            MiNewCard(late),
            MiNewCard(onT),
          ],
        ),
      ),
    );
  }
}
//-----------------------------------------------//

class LinearBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 20,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 35),
                    Text(
                      'All Check_in Detail',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.red[700]),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Absents',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('On Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Late',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue[300])),
                    Text('10',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.green[300])),
                    Text('02',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red[700])),
                  ],
                ),
              ],
            )),
        //------------Bar----------------------//

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: 360.0,
                lineHeight: 15.0,
                percent: 0.9,
                backgroundColor: Colors.grey,
                progressColor: Colors.red[700],
              ),
            ],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: 360.0,
                lineHeight: 15.0,
                percent: 0.7,
                backgroundColor: Colors.transparent,
                progressColor: Colors.green[300],
              ),
            ],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: 360.0,
                lineHeight: 15.0,
                percent: 0.2,
                backgroundColor: Colors.transparent,
                progressColor: Colors.blue[300],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class MiNewCard extends StatelessWidget {
  String colortime = 'On Time';
  String tTime;

  MiNewCard(this.tTime);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$date',
                  style: TextStyle(
                    color: darkRed, //color red
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 50),
                Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tTime == 'On Time' ? lightGreen : lightPink,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '$tTime',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '$timeIN',
                ),
                SizedBox(width: 40),
                Text(
                  '$timeOUT',
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('$content'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                '14:01 20/10/2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
