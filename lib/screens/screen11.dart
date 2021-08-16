import 'package:flutter/material.dart';

//---------------Team Performance|Tabs|/Screen11----------------//

class Screen11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

//-----------------function-------------------//

class MiniCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      child: Container(
        width: 400,
        height: 100,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
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
