import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen25.dart';

//---------------My Request/Screen24----------------//

String requestA = 'Request For Laptop';
String requestB = 'Rquest For Hiring';
String requestC = 'Rquest For Casual Leave';
String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
String empty = '';
String aproved = 'Appoved';
String pend = 'Pending';
String yes = 'Aprd';
String no = 'pe';

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

class Screen24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('My Request'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              RedCreateButton(),                        // this function are defined below and parameter above
              RequestCard(requestA, content, pend, no),
              RequestCard(requestB, empty, aproved, yes),
              RequestCard(requestC, content, aproved, yes),
              RequestCard(requestA, content, pend, no),
              RequestCard(requestB, content, aproved, yes),
              RequestCard(requestC, content, aproved, yes),
            ],
          ),
        ),
      ),
    );
  }
}
//-----------function----------------//

class RedCreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            OutlinedButton(
              child: Text("+Create Request"),
              style: OutlinedButton.styleFrom(
                  primary: darkRed,
                  backgroundColor: Colors.transparent,
                  onSurface: Colors.orangeAccent,
                  side: BorderSide(color: darkRed, width: 1)),
              onPressed: () {
                                                                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen25()));
              },
            ),
            SizedBox(width: 150),
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
      ),
    );
  }
}

// ignore: must_be_immutable
class RequestCard extends StatelessWidget {
  String header;
  String body;
  String status;
  String value;

  RequestCard(this.header, this.body, this.status, this.value);

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$header',
                      style: TextStyle(
                        color: darkRed, //color red
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value == 'Aprd' ? lightGreen : lightPink,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '$status',
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '$body',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 30),
              Text(
                '14:01 20/10/2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
