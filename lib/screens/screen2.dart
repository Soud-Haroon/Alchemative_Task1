import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';

//-----------Team History/Screen2--------------//

final darkRed = Color(0xffbf2634);

String name = 'Member Name';
String date = '02-05-2021 Thu';
String timeIN = 'Checkin: 09:25am';
String timeOUT = 'Checkout: 06:00pm';
String content = 'Total Working Hours: 8hr 20min';
String late = 'Late';
String onT = 'On Time';

final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);
final time = Text('On time');
final latetime = Text('Late');


// ignore: camel_case_types
class screen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Team History'),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropDownOpt(),    //top right dropdown menu
              ],
            ),
            MiniCard(onT),
            MiniCard(late),         //History Card
            MiniCard(onT),
          ],
        ),
      ),
    );
  }
}

//----------Function Below---------------------//

class DropDownOpt extends StatefulWidget {
  @override
  State<DropDownOpt> createState() => _DropDownOptState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DropDownOptState extends State<DropDownOpt> {
  String dropdownValue = 'Today';

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
      items: <String>['Today', 'Yesterday', 'Tomorrow']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      underline: DropdownButtonHideUnderline(child: Container()),
    );
  }
}

// ignore: must_be_immutable
class MiniCard extends StatelessWidget {
  String colortime = 'On Time';     
  String tTime;                                 //creating minicard
                                                //passing tTime as status of card

  MiniCard(this.tTime);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(                       //Buliding Card
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(                         //main Column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(                               //adding Row to adjust icon and content 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/image/stevejobs.jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$name',
                      style: TextStyle(
                        color: Colors.black, //color red
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '$date',
                      style: TextStyle(
                        color: darkRed, //color red
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 50),
                Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tTime == 'On Time' ? lightGreen : lightPink, //applying a condition to change colors of status
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '$tTime',
                        textAlign: TextAlign.center,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                    Text(
                  '$timeIN',  //time in
                ),
                SizedBox(width: 40),
                Text(
                  '$timeOUT', //time out
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('$content'), //main body content
            SizedBox(height: 20),
            Text(
              '14:01 20/10/2020',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
