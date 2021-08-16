import 'package:flutter/material.dart';
import 'package:task1app/screens/screen10.dart';
import 'package:task1app/screens/screen33.dart';
import 'package:task1app/screens/screen34.dart';
import 'package:task1app/screens/screen35.dart';

//---------------My Profile/Screen32----------------//

// ignore: must_be_immutable
class Screen32 extends StatelessWidget {
  String text1 = 'Personal Information';
  String text2 = 'Educational Information';
  String text3 = 'Experience Information';
  // Navigator nav = Screen30;
  var npage1 = new Screen33();
  var npage2 = new Screen33();    //pass address in var to used in Navigator!!
  var npage3 = new Screen35();

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
          'My Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Myprofile(),
              SizedBox(
                height: 20,
              ),
              Card(text1, npage1),
              Card(text2, npage2),    //var parametered added
              Card(text3, npage3),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Myprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Screen34()));
                },
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/image/ben.jpeg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Name Here',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Front-End UI',
                style: TextStyle(color: Colors.grey),
              ),
              // SizedBox(height: 50,),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Card extends StatelessWidget {    //reused card
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
                        child: Image.asset('assets/image/stevejobs.jpg'),
                      ),
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
