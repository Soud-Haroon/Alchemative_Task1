import 'package:flutter/material.dart';
import 'package:task1app/screens/screen18.dart';
import 'package:task1app/screens/screen36.dart';
import 'package:task1app/screens/screen6.dart';

//---------------Experience/Screen35----------------//

final darkRed = Color(0xffbf2634);
final textFieldColor = Color(0xffFFFFFA);

String dis =
    'Hello guys, we have discussed about post-corona vacation plan and out decision is to go to bali. We have have a very big party after this corona ends!';

class Screen35 extends StatelessWidget {
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
                  SizedBox(height: 5),
                  GestureDetector(
                    onTap: () {
                        Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen36()));
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
            getTextField(hint: 'Experience'),
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
                children: [   //called from screen18
                  Chips('Adobe PhotoShop'),
                  Chips('Adobe XD'),
                  Chips('Figma'),
                  Chips('Figma'),
                  Chips('Adobe PhotoShop'),
                  Chips('Adobe XD'),
                ],
              ),
            ),
            getTextField(hint: 'Education'),
            getTextField(hint: 'Interest'),
            DiscriptionField(dis),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------//

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
