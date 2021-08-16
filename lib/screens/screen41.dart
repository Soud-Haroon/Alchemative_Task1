import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen12.dart';
import 'package:task1app/screens/screen42.dart';

final darkRed = Color(0xffbf2634);

class Screen41 extends StatelessWidget {
  String text1 = 'This Month';
  String text2 = 'January';
  String text3 = 'December';
  String text4 = 'Novermber';
  String base = 'Eveluated by manager name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Performance'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Content(text1, base),
            Content(text2, base),
            Content(text3, base),
            Content(text4, base),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  String text1;
  String text2;

  Content(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Screen42()));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(15),
        child: Container(
          width: 400,
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(text2),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 30,
                width: 30,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: CircleIndicator(),
                ),
              ), //color red
            ],
          ),
        ),
      ),
    );
  }
}
