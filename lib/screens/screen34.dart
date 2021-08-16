import 'package:flutter/material.dart';
import 'package:task1app/screens/screen33.dart';

//---------------Edit/Screen34----------------//

final darkRed = Color(0xffbf2634);
String name = 'Your Name';
String father = 'Father Name';
String email = 'Email';
String gender = 'Gender';
String address = 'Address';
String phone = 'Phone';
String status = 'Martel Status';
String city = 'City';
String cnic = 'CNIC No.';
String dateBirth = 'Date of Birth';

class Screen34 extends StatelessWidget {
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
                  children: [     //called classes
                    ProfileUi(),
                    SizedBox(height: 40),
                    getTextField(hint: name),
                    SizedBox(height: 10),
                    getTextField(hint: father),
                    SizedBox(height: 10),
                    Drop(city),
                    SizedBox(height: 10),
                    getTextField(hint: address),
                    SizedBox(height: 10),
                    getTextField(hint: email),
                    SizedBox(height: 10),
                    getTextField(hint: phone),
                    SizedBox(height: 10),
                    Drop(gender),
                    SizedBox(height: 10),
                    Drop(status),
                    SizedBox(height: 10),
                    getTextField(hint: cnic),
                    SizedBox(height: 10),
                    getTextField(hint: dateBirth),
                    SizedBox(height: 10),
                    Buttons(),
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

class ProfileUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
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
                Positioned(
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

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
              
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Save'),
                style: ElevatedButton.styleFrom(
                  primary: darkRed, //color red
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen33()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
