import 'package:flutter/material.dart';
import 'package:task1app/screens/screen37.dart';
import 'package:task1app/screens/screen39.dart';
import 'package:task1app/screens/screen40.dart';
import 'package:task1app/screens/screen41.dart';

String text1 = 'Member Name';
String text2 = 'Checking History';
String text3 = 'Performance';
String text4 = 'Request History';
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);
var npage1 = new Screen40();
var npage2 = new Screen37();
var npage3 = new Screen41();
var npage4 = new Screen39();


class Screen38 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Member Detail',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Card(text1, npage1),
            Card(text2, npage2),
            Card(text3, npage3),
            Card(text4, npage4),
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  String text1;
  var nav;

  Card(this.text1, this.nav);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => nav));
              },
              child: Container(
                height: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      backgroundImage: AssetImage("assets/image/ben.jpeg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      child: Text(
                        text1,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: lightPink,
                        child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: Icon(Icons.arrow_forward_ios))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
