import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen10.dart';
import 'package:task1app/screens/screen18.dart';

//---------------Leave Management/Screen7----------------//

final darkRed = Color(0xffbf2634);

// ignore: must_be_immutable
class Screen9 extends StatelessWidget {
  String text1 = 'Anual Leaves';
  String text2 = 'Casual Leaves';
  String text3 = 'Sick Leaves';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Leave Management'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: null,
                      child: TextButton(                //textbutton
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Screen10()));  //linking screen10
                        },
                        child: Text(
                          'Leaves History',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  MiniCardleave(text1),
                  MiniCardleave(text2),  //function called & defined below
                  MiniCardleave(text3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//-----------------Function Below-----------------//

// ignore: must_be_immutable
class MiniCardleave extends StatelessWidget { //resue card but with chainging
  String text;
  MiniCardleave(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 130,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[100],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundImage: AssetImage("assets/image/ben.jpeg"), //using profilepic
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '20 anual leaves pending',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(               //showdialog on Apply now 
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          title: Text('Apply Leave'), //on which popup pops
                          content: SingleChildScrollView(
                            child: Container(
                              height: 320,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Drop('Date'),
                                  Drop('Leave Type'),
                                  TextField(
                                      maxLines: 2,
                                      decoration: InputDecoration(
                                          hintText: 'Comment',
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              )))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                      onPressed: () {
                                        showDialog(         //another pop used to show cleared and exit
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            title: Row(
                                              children: [
                                                SizedBox(
                                                  width: 210,
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.close),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            ),
                                            content: SingleChildScrollView(
                                              child: Container(
                                                // height: 320,
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 60,
                                                      color: Colors.green,
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                    ),
                                                    Text(
                                                        'You have Applied for your leave'),
                                                    Text(
                                                        'Waiting for approval'),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom( //button used in dialog
                                          primary: Colors.red[800],
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: Text(
                                        'Apply Now',
                                        style: TextStyle(color: Colors.white),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Text(    //on card
                      'Apply Now',
                      style: TextStyle(color: Colors.red[800], fontSize: 13),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
