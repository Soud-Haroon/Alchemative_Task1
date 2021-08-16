import 'package:flutter/material.dart';
import 'package:task1app/screens/screen16.dart';

//---------------Announcement/Screen7----------------//
//MiniCard changed

final darkRed = Color(0xffbf2634);

// ignore: camel_case_types
class screen7 extends StatelessWidget {
  screen7();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Announcement', style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen16()));//linking Notification screen16
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              MiniCardAnn(),
              MiniCardAnn(),
              MiniCardAnn(),
              MiniCardAnn(),
              MiniCardAnn(),
            ],
          ),
        ),
      ),
    );
  }
}

class MiniCardAnn extends StatelessWidget {  //reuse but with changing
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 240,
      margin: EdgeInsets.all(20),
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
          SizedBox(
            height: 20.0,
          ),
          Text(
            'This super Leogue lorem 2017',
            style: TextStyle(
              color: darkRed, //color red
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Hello guys, we have discussed about post-corona vacation plan and out decision is to go to bali. We have have a very big party after this corona ends!',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          SizedBox(height: 50),
          Text(
            '14:01 20/10/2020',
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
