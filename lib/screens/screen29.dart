import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';

//---------------Team Request/Screen29----------------//


String requestA = 'Request For Laptop';
String requestB = 'Request For Hiring';
String requestC = 'Request For Proposal';

String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';


final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

class Screen29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('My Request'),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
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
            RequestCardApproved(requestA, content),
            RequestCardSimple(requestB, content),
            RequestCardSimple(requestC, content),
          ],
        ),
      ),
    );
  }
}

//-------------------------------------------------------//

class RequestCardApproved extends StatelessWidget {
  String header;
  String body;

  RequestCardApproved(this.header, this.body);

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
                    TextButton(onPressed: (){}, child: Text('Edit', style: TextStyle(color: Colors.red))),
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
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightGreen,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Approved',
                            textAlign: TextAlign.center,
                          ),
                        )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//----------------------------------------//

class RequestCardSimple extends StatelessWidget {
  String header;
  String body;

  RequestCardSimple(this.header, this.body);

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
                    TextButton(onPressed: (){}, child: Text('ViewAll', style: TextStyle(color: Colors.red))),
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
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red[900]
                    ),
                   child: Text('Reject')),
                   SizedBox(width: 10),
                  //------------------//
                    ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[700]
                    ),
                    child: Text('Approved')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
