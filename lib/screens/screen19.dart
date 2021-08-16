import 'package:flutter/material.dart';
import 'package:task1app/screens/screen18.dart';
import 'package:task1app/screens/screen2.dart';
import 'package:task1app/screens/screen20.dart';
import 'package:task1app/screens/screen3.dart';
import 'package:task1app/screens/screen37.dart';
import 'package:task1app/screens/screen6.dart';
import 'package:task1app/screens/screen7.dart';
import 'package:task1app/screens/screen8.dart';
import 'package:task1app/screens/screen9.dart';

//---------------Main Home/Screen19----------------//

String textA = 'Anual Leave';
String textB = 'Casual Leave';
String textC = 'Sick Leave';
String comment1 = '20 Anual Leave Pending';
String comment2 = '2 Leave in Month';
String dateday = '20/10/2021';
String iDay = 'Iqbal Day';
String pakDay = 'Pakistan Independance Day';
String labDay = 'Labour';

final bdColor = Color(0xffF4F4F4);
final darkRed = Color(0xffbf2634);

class Screen19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(       //using ListView to align all widget in list
        children: [
          Container(
            height: 2300,
            child: Stack(       //using stack to lap layer over another to build UI profile
              children: [
                Positioned(     //positioned of background image
                  top: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/landcafe.jpg'),
                        fit: BoxFit.cover,
                      ),
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
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(height: 5),
                        Text('Front-End & UI',
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ),
                Positioned(     //positioned of all the content listed in listview
                  left: 0,
                  right: 0,
                  top: MediaQuery.of(context).size.height * 0.30,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.70,
                    padding: EdgeInsets.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: bdColor,
                    ),
                    //-------------------in_Container Content-----------------//
                    child: Column(
                      children: [
                        SizedBox(height: 100),
                        Container(          //Announcement Bar with its widget
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: ListTile(
                                  leading: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.orange[900],
                                      ),
                                      child: Icon(Icons.link,
                                          size: 50, color: Colors.white)),
                                  title: Text(
                                    'Announcement',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  trailing: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => screen7()));
                                    },
                                    child: Text('View all'),
                                  ),
                                ),
                              ),
                              Container(            //added minicardAnn
                                height: 300,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      color: Colors.transparent,
                                      height: 220,
                                      width: 400,
                                      child: MiniCardAnn(), //called from screen7
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      color: Colors.transparent,
                                      height: 200,
                                      width: 400,
                                      child: MiniCardAnn(),  //called from screen7
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(        //birthday bar and its content
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green[200],
                                    ),
                                    child: Icon(Icons.link,
                                        size: 50, color: Colors.white)),
                                title: Text(
                                  'Birthday',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => screen8()));
                                  },
                                  child: Text('View all'),
                                ),
                              ),
                              Container(      //birthdayCard
                                height: 170,
                                color: Colors.transparent,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      color: Colors.transparent,
                                      height: 100,
                                      width: 400,
                                      child: BirthDayCard(),    //called from screen8
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      color: Colors.transparent,
                                      height: 100,
                                      width: 400,
                                      child: BirthDayCard(),    //called from screen8
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(        //LeaveManagement as its Content
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.lime[900],
                                    ),
                                    child: Icon(Icons.link,
                                        size: 50, color: Colors.white)),
                                title: Text(
                                  'Leave Management',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Screen9()));
                                  },
                                  child: Text('View Detail'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(         //in Widget Content
                                  height: 310,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [     //defined down below
                                      LeaveCardB(textA, comment1),
                                      LeaveCardB(textB, comment2),
                                      LeaveCardB(textC, comment2),
                                      SizedBox(height: 10),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(left: 10),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              showDialog(     //dialog appled on Apply Leave
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return AlertDialog(
                                                      backgroundColor:
                                                          Colors.grey[100],
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      scrollable: true,
                                                      title: Text('Apply Leave',
                                                          style: TextStyle(
                                                              color: darkRed)),
                                                      content: Container(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Drop('Date'),
                                                            Drop('Leave Type'),
                                                            DiscriptionField(
                                                                'Comments'),
                                                            ElevatedButton(
                                                                child: Text(
                                                                    "Submit"),
                                                                onPressed: () {
                                                                  // your code
                                                                }),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  });
                                            },
                                            child: Text('Apply Leave'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(                //TeamMember bar as its content
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.lime,
                                    ),
                                    child: Icon(Icons.link,
                                        size: 50, color: Colors.white)),
                                title: Text(
                                  'Team Member',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => screen2()));
                                  },
                                  child: Text('View All'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: LinearBar(), //linear bar called from screen37 see screen37.dart file
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(                //Events bar as it content
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue[900],
                                    ),
                                    child: Icon(Icons.link,
                                        size: 50, color: Colors.white)),
                                title: Text(
                                  'Events ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Screen20()));
                                  },
                                  child: Text('View All'),
                                ),
                              ),
                              Container(      //event widgets
                                height: 300,
                                color: Colors.transparent,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  // padding: EdgeInsets.all(5),
                                  children: [
                                    Container(
                                      width: 420,
                                      color: Colors.transparent,
                                      child: ImageCard(), //called from screen20
                                    ),
                                    Container(
                                      width: 420,
                                      color: Colors.transparent,
                                      child: ImageCard(),  //called from screen20
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(    //holidays bar as its content
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.blue[300],
                                    ),
                                    child: Icon(Icons.link,
                                        size: 50, color: Colors.white)),
                                title: Text(
                                  'Upcoming Holidays',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                trailing: TextButton(
                                  onPressed: () {},
                                  child: Text('View All'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  // color: Colors.black,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [     //see leavecardB down below
                                      LeaveCardB(iDay, dateday),
                                      LeaveCardB(pakDay, dateday),
                                      LeaveCardB(labDay, dateday),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //-------------------in_Container Content_End-----------------//
                  ),
                ),
                Positioned(       //positioned of checkin layer at top UI
                  left: 40,
                  right: 40,
                  top: 175,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Container(
                      height: 160,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: darkRed)),
                        color: Colors.white,
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,\
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Check In',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(height: 10),
                                Text('You Haven,t chock in yet',
                                    style: TextStyle(color: Colors.grey)),
                                SizedBox(height: 10),
                                Text('00 : 00 : 00 HRS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(height: 10),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Screen3()));
                                    },
                                    child: Text('View History')),
                              ],
                            ),
                          ),
                          
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(color: darkRed, width: 3),
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Check In',
                                  style: TextStyle(fontSize: 11)),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                // padding: EdgeInsets.all(14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//----------------------Function Below-------------------//

// ignore: must_be_immutable
class LeaveCardB extends StatelessWidget {
  String content;
  String comtext;
  LeaveCardB(this.comtext, this.content);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/image/ben.jpeg'),
                maxRadius: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$comtext',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text('$content'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


