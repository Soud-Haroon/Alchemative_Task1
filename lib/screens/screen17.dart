import 'package:flutter/material.dart';

//---------------Profile/Screen17----------------//

final darkRed = Color(0xffbf2634);

class Screen17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Edit'),
                      SizedBox(width: 2),
                      Icon(
                        Icons.edit,
                        color: darkRed,
                      ),
                    ],
                  ),
                ),
              ),
              IdProfile(), //calling function
            ],
          ),
        ),
      ),
    );
  }
}
//------------------function------------------/

class IdProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(                  //by using card
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
                    child: Image.asset('assets/image/landcafe.jpg'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Employee ID #12221',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 30),
                    Text('Front-end & UI',
                        style: TextStyle(color: Colors.grey)),
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
