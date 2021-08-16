import 'package:flutter/material.dart';
import 'package:task1app/screens/screen16.dart';
import 'package:task1app/screens/screen38.dart';

//---------------Team/Screen31----------------//


class screen31 extends StatelessWidget {
  screen31();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Team', style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
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
          child: Column(
            children: [
              MiniCard(),
              MiniCard(),
              MiniCard(),
              MiniCard(),
              MiniCard(),
              MiniCard(),
              MiniCard(),
              MiniCard(),
            ],
          ),
        ),
      ),
    );
  }
}
//-------------------------------------------------------//

class MiniCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context)
         .push(MaterialPageRoute(builder: (context) => Screen38()));
      },
      child: Container(
        width: 400,
        height: 90,
        margin: EdgeInsets.all(15),
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
                CircleAvatar(
                  radius: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/image/profilepic.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Lee Williamson'),
                    Text('Designation'),
                  ],
                ),
                SizedBox(
                  width: 80,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
