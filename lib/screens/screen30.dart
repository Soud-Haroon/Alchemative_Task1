import 'package:flutter/material.dart';
import 'package:task1app/screens/screen10.dart';
import 'package:task1app/screens/screen31.dart';
import 'package:task1app/screens/screen32.dart';

//---------------More/Screen30----------------//


class Screen30 extends StatelessWidget {
  String text1 = 'My Profile';
  String text2 = 'Team Profile';
  String text3 = 'Setting';
  // Navigator nav = Screen30;
  var npage1 = new Screen32();
  var npage2 = new screen31();
  var npage3 = new Screen32();
  final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

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
          'More',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CardNewA(text1, npage1),
            CardNewA(text2, npage2),
            CardNewA(text3, npage3),
          ],
        ),
      ),
    );
  }
}

//-------------------------------------------------------------------//

class CardNewA extends StatelessWidget {
  String text1;
  var nav;

  CardNewA(this.text1, this.nav);
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
                        child: Image.asset('assets/image/profilepic.jpg'),
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
                      child: Icon(Icons.arrow_forward_ios)),
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
