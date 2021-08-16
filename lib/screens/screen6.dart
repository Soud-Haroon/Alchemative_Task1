import 'package:flutter/material.dart';
import 'package:task1app/bars/navbar.dart';
import 'package:task1app/screens/screen18.dart';

//---------------Experience/Screen6----------------//
// this screen is almost same as screen5 but with minor changing
//no checkbox
//change in button address

final darkRed = Color(0xffbf2634);

// ignore: must_be_immutable
class Screen6 extends StatelessWidget {
  String text1 = 'School';
  String text2 = 'Degree';
  String text3 = 'Field of Study';
  String text4 = 'Grade';
  String text5 = 'Start Date';
  String text6 = 'End Date';
  String dis = 'Discription';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Personal Info',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    getTextField(hint: "$text1"),
                    SizedBox(height: 10),
                    getTextField(hint: "$text2"),
                    SizedBox(height: 10),
                    getTextField(hint: "$text3"),
                    Row(
                      children: [
                        Flexible(
                          child: getTextField(hint: "$text5"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: getTextField(hint: "$text6"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    getTextField(hint: "$text4"),
                    SizedBox(height: 10),
                    DiscriptionField(dis),
                    SizedBox(height: 10),
                    Button(),
                    SizedBox(height: 10),
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

//---------------------Class & Function Below-------------------------------//


final textFieldColor = Color(0xffFFFFFA);

Widget getTextField({required String hint}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
    child: SizedBox(
      height: 70,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            filled: true,
            fillColor: textFieldColor,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
      ),
    ),
  );
}

class DiscriptionField extends StatelessWidget {
  String text;
  DiscriptionField(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: SizedBox(
        child: TextField(
          maxLines: 5,
          style: TextStyle(),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            hintText: "$text",
            filled: true,
            fillColor: textFieldColor,
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Nav(0)));
                },
                child: Text('Skip'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: darkRed, //color red
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Screen18())); //linking Screen18
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
