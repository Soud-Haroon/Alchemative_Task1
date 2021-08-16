import 'package:flutter/material.dart';
import 'package:task1app/bars/navbar.dart';
import 'screen14.dart';
import 'package:task1app/bars/appbar.dart';

//---------------Learning/Screen15----------------//
//same as screen14 but with change in last widget

final orange = Colors.orange[400];
final green = Colors.green[400];
final red = Colors.red[400];
final white = Colors.white;

class Screen15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Performance'),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            Center(
              child: Text(
                'Learning',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            StarReview(orange,'On Job Learing', orange), //with sidebar
            StarReview(green, 'Functional',green),  //with sidebar
            StarReview(white, 'Softskills', red),   //with no sidebar
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Nav(1)));//linking see navbar.dart in index: 1
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 130, right: 130, top: 20, bottom: 20)),
                    elevation: MaterialStateProperty.all(7),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: Text('Close')),
          ],
        ),
      ),
    );
  }
}