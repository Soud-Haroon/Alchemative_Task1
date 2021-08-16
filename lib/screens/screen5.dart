import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1app/bars/navbar.dart';
import 'package:task1app/screens/screen6.dart';

//---------------Experience/Screen5----------------//
// this screen is almost same as screen4 but with minor changing
// no profile
// added checkbox and Discription widgets
//change in button address

final darkRed = Color(0xffbf2634);
final textFieldColor = Color(0xffFFFFFA);
String text1 = 'Title';
String text2 = 'Company Name';
String text3 = 'Location';
String text4 = 'Discription';
String text5 = 'Start Date';
String text6 = 'End Date';
String dis = 'Discription';
String type = 'Employment Type';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(         
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Experience',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getTextField(hint: text1),
              Drop(type),
              SizedBox(height: 13),
              getTextField(hint: text2),
              getTextField(hint: text3),
              Row(
                children: [
                  Flexible(
                    child: getTextField(hint: text5),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: getTextField(hint: text6),
                  ),
                ],
              ),
              SizedBox(height: 20),
              MainCheckBox(),           //added checkbox define below
              SizedBox(height: 20),
              DiscriptionField(dis),    //adding discription and string as Text
              SizedBox(height: 20),
              Buttons(),                //button
            ],
          ),
        ),
      ),
    );
  }
}

//---------------------Class & Function Below-------------------------------//

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
//------------------------------------------------------------//

class DiscriptionField extends StatelessWidget {
  String dis;
  DiscriptionField(this.dis);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
            hintText: "$dis",
            filled: true,
            fillColor: textFieldColor,
          ),
        ),
      ),
    );
  }
}
//-----------------------------------------------------------//

class Drop extends StatefulWidget {
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
//------------------------------------------------------//

class Buttons extends StatelessWidget {
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
                      .push(MaterialPageRoute(builder: (context) => Nav(0)));
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen6()));//linking Screen6
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//------------------------------------------------------------------//

class MainCheckBox extends StatefulWidget { //Creating CheckBox and styling 
  @override
  _MainCheckBoxState createState() => _MainCheckBoxState();
}

class _MainCheckBoxState extends State<MainCheckBox> {
  bool value = false;         //using Boolean methon to make checkbox uncheck at first
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: ListView(
                  children: [
                    buildCheckBox(), //calling checkbox
                  ],
                ),
              ),
              Text('I Currently work in this Role'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCheckBox() => Checkbox( //checkbox function
        value: value,
        onChanged: (value) {
          setState(() {
            this.value = value!;
          });
        },
      );
}
