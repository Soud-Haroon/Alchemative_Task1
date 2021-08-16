import 'package:flutter/material.dart';
import 'package:task1app/screens/screen34.dart';

//---------------Personal Information/Screen33----------------//


final darkRed = Color(0xffbf2634);
final textFieldColor = Color(0xffFFFFFA);
String name = 'Usman Ali';
String father = 'Toufeeq Butt';
String address = 'H 75B, St 5 Miliatary accounts Society';
String email = 'muh.usman@gmail.com';
String num = '0301-23456789';
String gender = 'Male';
String status = 'Single';
String cinc = '35202-12345678-9';
String date = '03/02/2020';

class Screen33 extends StatelessWidget {
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
          'Personal Information',
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
                    // ProfileUi(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      decoration: BoxDecoration(
                          ),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/image/ben.jpeg'),
                            maxRadius: 40,
                          ),
                          SizedBox(height: 10),
                          Text('Name Here',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          SizedBox(height: 5),
                          Text('Front-End & UI',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Screen34()));
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Edit'),
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.edit,
                                    color: darkRed,
                                    // size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    getTextField(hint: name),
                    getTextField(hint: father),
                    getTextField(hint: address),
                    getTextField(hint: email),
                    getTextField(hint: num),
                    getTextField(hint: gender),
                    getTextField(hint: status),
                    getTextField(hint: cinc),
                    getTextField(hint: date),
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

//---------------------------------------------------//

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
