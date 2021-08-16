import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'screen5.dart';

//---------------Create Request/Screen26----------------//


final darkRed = Color(0xffbf2634);
final textFieldColor = Color(0xffFFFFFA);
String typeA = 'Assets';
String typeB = 'Select Asset';
String comment = 'Comment';

class Screen26 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Experience'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Drop(typeA),
                    SizedBox(height: 13),
                    Drop(typeB),
                    SizedBox(height: 20),
                    DiscriptionField(comment),
                    CreateButton(),
                    // SizedBox(height: 10),
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

//-------------------------------------------------------//

class CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
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
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => Screen6()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
