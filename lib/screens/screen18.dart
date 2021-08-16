import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/bars/navbar.dart';

//---------------Skills/Screen18----------------//

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

String type = 'Skills';

class Screen18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Skills'),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Drop(type),
                SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Wrap(          //chips added see below
                      children: [
                        Chips('Adobe PhotoShop'),
                        Chips('Adobe XD'),
                        Chips('Figma'),
                        Chips('Figma'),
                        Chips('Adobe PhotoShop'),
                        Chips('Adobe XD'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 13),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: Text('Suggested Skills',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Container(
                    child: Wrap(            //chips added see below
                      children: [
                        Chips('Adobe PhotoShop'),
                        Chips('Adobe XD'),
                        Chips('Figma'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 150),
                Align(alignment: Alignment.bottomCenter, child: Buttons()), //calling button
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//-------------------function--------------------------//

// ignore: must_be_immutable
class Chips extends StatelessWidget {
  String text;

  Chips(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FittedBox(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: lightPink,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('$text', style: TextStyle(fontSize: 16)),
                  Icon(Icons.clear, size: 18),
                ],
              ),
            )),
      ),
    );
  }
}

// ignore: must_be_immutable
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Nav(0)));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
