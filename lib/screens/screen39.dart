import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen24.dart';
import 'package:task1app/screens/screen27.dart';

String requestA = 'Leave Type';
String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
String empty = '';
String aproved = 'Appoved';
String pend = 'Pending';
String yes = 'Aprd';
String no = 'pe';

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

class Screen39 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Leave History'),
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                card1(),
                card1(),
                card1(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 295,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    child: Row(
                  children: [
                    Text('Filter',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(width: 2),
                    Icon(Icons.tune),
                  ],
                )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RequestCard(requestA, content, pend, no),
          SizedBox(
            height: 20,
          ),
          RequestCardStat('Request for Laptop', content, pend, no),
          RequestCard(requestA, content, aproved, yes),
        ],
      ),
    );
  }
}
//---------------------------------------------------//

class RequestCardStat extends StatelessWidget {
  String header;
  String body;
  String status;
  String value;

  RequestCardStat(this.header, this.body, this.status, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$header',
                      style: TextStyle(
                        color: darkRed, //color red
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: value == 'Aprd' ? lightGreen : lightPink,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '$status',
                            textAlign: TextAlign.center,
                          ),
                        )),
                  ],
                ),
              ),
              Text(
                'Name here',
                style: TextStyle(
                  color: darkRed, //color red
                  // fontWeight: FontWeight.bold,
                  // fontSize: 17,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                '$body',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 30),
              Text(
                '14:01 20/10/2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                      child: Text('Reject')),
                  SizedBox(width: 10),
                  //------------------//
                  ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(primary: Colors.green[700]),
                      child: Text('Approved')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[100],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('assets/image/ben.jpeg'),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'ANual Leaves',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '20 Pending',
              style: TextStyle(color: Colors.grey),
            ),
          ]),
    );
  }
}
