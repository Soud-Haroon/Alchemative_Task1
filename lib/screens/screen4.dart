import 'package:flutter/material.dart';
import 'package:task1app/bars/navbar.dart';
import 'package:task1app/screens/screen5.dart';

//---------------Personal Info/Screen4--------------//

final darkRed = Color(0xffbf2634);
String text1 = 'Personal Information';
String text2 = 'Educational Information';
String text3 = 'Experience Information';
String gender = 'Gender';
String status = 'Martel Status';
var page1 = new Screen5(); //in this adding Screen5 as reference for navigating 

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //using a simple appbar
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
                    ProfileUi(),            //Main Profile Icon define below
                    SizedBox(height: 40),
                    getTextField(hint: "Your Name"),
                    SizedBox(height: 10),
                    getTextField(hint: "Father Name"),
                    SizedBox(height: 10),
                    getTextField(hint: "Email Name"),
                    SizedBox(height: 10),
                    getTextField(hint: "Phone"),
                    SizedBox(height: 10),
                    Drop(gender),        //passing gender as argument in gender
                    SizedBox(height: 10),
                    Drop(status),        //passing status as argument in gender
                    SizedBox(height: 10),
                    Button(page1),       //passing address of screen as argument as page1
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

class ProfileUi extends StatelessWidget {   //creating Profile UI
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Stack(                           //using stack to lap edit icon over Picture
              children: [
                Container(      //add image and styling
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                          BoxShadow(
                          spreadRadius: 4,
                          blurRadius: 15,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 10))
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/image/ben.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(         //using position to adjust icon on picture
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 3,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        shape: BoxShape.circle,
                        color: darkRed, //color red
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(                //Profile Details
              child: Column(
                children: [
                  Text('Name Here',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Front-End UI', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final textFieldColor = Color(0xffFFFFFA);

Widget getTextField({required String hint}) {   //creating TextField 
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

// ignore: must_be_immutable
class Drop extends StatefulWidget {      //drop adding hinttext as argument for required Text 
  String hintTxt;
  Drop(this.hintTxt);
  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  final textFieldColor = Color(0xffFFFFFA);

  String? dropdownvalue;
  var items = [
    // 'Gender',
    '1',
    '2',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffFFFFFA),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                hint: Text(
                  '${widget.hintTxt}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {   //creating two button: textbutton and simple button
  var nav;                               //intializing reference for different screens
  Button(this.nav);
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
                      Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nav(0)));//linking to Navigation index 0: see navbar.dart
                },
                child: Text('Skip'),               //skip button
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Next'),                //next button
                style: ElevatedButton.styleFrom(
                  primary: darkRed,                  //color red
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen5())); //linking Screen5
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
