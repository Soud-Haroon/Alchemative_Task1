import 'package:flutter/material.dart';
import 'package:task1app/screens/screen18.dart';

//---------------Experience/Screen36----------------//

final darkRed = Color(0xffbf2634);
final textFieldColor = Color(0xffFFFFFA);

String dis = 'About';

class Screen36 extends StatelessWidget {
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
          'Experience',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                  ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/ben.jpeg'),
                    maxRadius: 40,
                  ),
                  SizedBox(height: 10),
                  Text('Name Here',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  SizedBox(height: 5),
                  Text('Front-End & UI', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            getTextField(hint: 'Experience'),
            getTextField(hint: 'Education'),
            DropNew('Skills'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Skills'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Wrap(
                children: [       //called from screen18
                  Chips('Adobe PhotoShop'),
                  Chips('Adobe XD'),
                  Chips('Figma'),
                  Chips('Figma'),
                  Chips('Adobe PhotoShop'),
                  Chips('Adobe XD'),
                ],
              ),
            ),
            DropNew('Interest'),
            Button36(),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------//

class Button36 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            child: Text('Next'),
            style: ElevatedButton.styleFrom(
              primary: darkRed, //color red
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {
              Navigator.of(context)
                  .pop();
            },
          ),
        ],
      ),
    );
  }
}

class DropNew extends StatefulWidget {
  String hintTxt;
  DropNew(this.hintTxt);
  @override
  _DropNewState createState() => _DropNewState();
}

class _DropNewState extends State<DropNew> {
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

Widget getTextField({required String hint}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
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
