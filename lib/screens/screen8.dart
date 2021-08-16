import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';

//-----------------Birthday/screen8-------------//

final darkRed = Color(0xffbf2634);

// ignore: camel_case_types
class screen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Birthday'),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              BirthDayCard(),
              BirthDayCard(),
              BirthDayCard(),
            ],
          ),
        ),
      ),
    );
  }
}
//-------------------------------------------------//

class BirthDayCard extends StatelessWidget { //creating birthday card
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 140,
      margin: EdgeInsets.all(20),
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
              Icon(
                Icons.person,
                size: 100,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hamza Ali'),
                  Text('20 May 2020'),
                  Text('3 day'),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              IconButton(
                  icon: Icon(
                    Icons.celebration,
                    size: 40,
                    color: darkRed,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Hamza Ali'),
                        content: Text('Happy Birthday'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Okay'),
                          )
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
