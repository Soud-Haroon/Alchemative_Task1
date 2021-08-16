import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'screen24.dart';

//----------------Leave History/Screen10----------------//
//In this RequestedCard is called from class Screen24.dart
//

String requestA = 'Leave Type';
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

class Screen10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Leave History'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
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
              // --------------see screen24.dart-------------------//
              RequestCard(requestA, content, pend, no),
              RequestCard(requestA, empty, aproved, yes),
              RequestCard(requestA, content, aproved, yes),
              RequestCard(requestA, content, aproved, yes),
            ],
          ),
        ),
      ),
    );
  }
}