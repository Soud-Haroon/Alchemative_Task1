import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen37.dart';

//-----------checkin History/Screen3---------------//

final darkRed = Color(0xffbf2634);

//-------------Final String defined---------------//

String name = 'Member Name';
String date = '02-05-2021 Thu';
String timeIN = 'Checkin: 09:25am';
String timeOUT = 'Checkout: 06:00pm';
String content = 'Total Working Hours: 8hr 20min';
String late = 'Late';
String onT = 'On Time';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Checkin History'),  //custom appbar
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropDownOpt(),        //dropdown menu define below
              ],
            ),
            SizedBox(height: 10),
            Container(        //adding linearbar in container to give height
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: LinearBarNoHead(),
            ),
            MiNewCard(onT),
            MiNewCard(late),      //updated status define below 
            MiNewCard(onT),
          ],
        ),
      ),
    );
  }
}

//----------------------function below----------------------------//

class DropDownOpt extends StatefulWidget {    //dropdown
  @override
  State<DropDownOpt> createState() => _DropDownOptState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropDownOptState extends State<DropDownOpt> {      //dropdown
  String dropdownValue = 'January';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_sharp),
      iconSize: 40,
      elevation: 20,
      style: const TextStyle(color: Colors.black),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['January', 'Feb', 'March']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value), //using a string value
        );
      }).toList(),
      underline: DropdownButtonHideUnderline(child: Container()),
    );
  }
}

class LinearBarNoHead extends StatelessWidget {  //checkin linear bar indicator

  //Using Stack to overlap bars on each other

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //-------------------Card Header Content---------------------//
        Positioned(
            left: 0,
            top: 20,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Absents',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('On Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('Late',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ],
                ),
                SizedBox(height: 10),
                //-----------------------Content---------------------//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('12',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.blue[300])),
                    Text('10',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.green[300])),
                    Text('02',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red[700])),
                  ],
                ),
              ],
            )),
        //-------------------Bar----------------------//

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: 360.0,
                lineHeight: 15.0,
                percent: 0.9,
                backgroundColor: Colors.grey, //backgroundcolor of bar
                progressColor: Colors.red[700], //Red Bar
              ),
            ],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: 360.0,
                lineHeight: 15.0,
                percent: 0.7,
                backgroundColor: Colors.transparent,//giving background to transparent so take same color
                progressColor: Colors.green[300], //Green Bar
              ),
            ],
          ),
        ),

        Positioned(
          left: 0,
          top: 140,
          right: 0,
          child: Row(
            children: [
              LinearPercentIndicator(
                width: 360.0,
                lineHeight: 15.0,
                percent: 0.2,
                backgroundColor: Colors.transparent,//giving background to transparent so take same color
                progressColor: Colors.blue[300], //Blue Bar
              ),
            ],
          ),
        ),
      ],
    );
  }
}
