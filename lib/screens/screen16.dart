import 'package:flutter/material.dart';

//---------------Notification/Screen16----------------//

// ignore: must_be_immutable
class Screen16 extends StatelessWidget {
  String date = '16:04  20-10-2021';
  String note1 = 'Your leave request is approved';
  String note2 = 'Your leave request is rejected';
  String note3 = 'Lorem Added on Announcement';
  IconData icon1 = Icons.check_box;
  IconData icon2 = Icons.cancel;
  IconData icon3 = Icons.campaign;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Notification'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen16()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Text(
                  'New Notification',
                  style: TextStyle(),
                ),
                NotificationCard(note1, date, icon1),
                NotificationCard(note2, date, icon2),
                Text('Earlier'),
                NotificationCard(note1, date, icon1),
                NotificationCard(note2, date, icon2),
                NotificationCard(note3, date, icon3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//----------------function--------------------//

// ignore: must_be_immutable
class NotificationCard extends StatelessWidget {
  String text1;
  String text2;
  final IconData next;
  
  NotificationCard(this.text1, this.text2, this.next) {
    // this.text1 = text1;
    // this.text2 = text2;
    // this.next;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Icon(
                next,
                size: 50,
                color: Colors.green,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text('Your leave request is approved'),
                  // Text('16:04  20-10-2021',
                  Text(text1),   //<==
                  Text(
                    text2,
                    style: TextStyle(color: Colors.grey),
                  ), //<==
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
