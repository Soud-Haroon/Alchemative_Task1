import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen24.dart';
import 'package:task1app/screens/screen25.dart';

//---------------Request/Screen23----------------//

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

String requestA = 'Request For Laptop';
String requestB = 'Rquest For Hiring';
String requestC = 'Rquest For Casual Leave';
String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
String empty = '';
String aproved = 'Appoved';
String pend = 'Pending';
String yes = 'Aprd';
String no = 'pe';

class Screen23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Request'),
      body: SafeArea(
        child: ListView(        //using Listview to list all widget
          children: [
            ListTile(
              leading: Container(   //Team bar
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red[900],
                  ),
                  child: Icon(Icons.link, size: 50, color: Colors.white)),
              title: Text(
                'Team Request',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CardNewB('Pending Request'),      //called from below
            ListTile(
              leading: Container(         //myRequest bar called from below
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.orange[900],
                  ),
                  child: Icon(Icons.link, size: 50, color: Colors.white)),
              title: Text(
                'My Request',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen24()));
                },
                child: Text('View all'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CreateButton(),    //called class
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [           //request from screen24
                  RequestCard(requestA, content, pend, no),
                  RequestCard(requestB, empty, aproved, yes),
                  RequestCard(requestC, content, aproved, yes),
                  RequestCard(requestA, content, pend, no),
                ],
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
    return Center(
      child: Container(
        child: Row(
          children: [
            OutlinedButton(
              child: Text("+Create Request"),
              style: OutlinedButton.styleFrom(
                  primary: darkRed,
                  backgroundColor: Colors.transparent,
                  onSurface: Colors.orangeAccent,
                  side: BorderSide(color: darkRed, width: 1)),
              onPressed: () {
                                                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen25()));
              },
            ),
            SizedBox(width: 150),
            GestureDetector(
              onTap: null,
              child: Container(
                  child: Row(
                children: [
                  Text('Filter',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                  SizedBox(width: 2),
                  Icon(Icons.tune),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class CardNewB extends StatelessWidget {
  String text1;

  CardNewB(this.text1);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Screen24()));
              },
              child: Container(
                height: 100,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child:
                          ClipRRect(borderRadius: BorderRadius.circular(100)),
                      backgroundImage: AssetImage("assets/image/ben.jpeg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            text1,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '02',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: darkRed,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: lightPink,
                        child: Icon(Icons.arrow_forward_ios)),
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
