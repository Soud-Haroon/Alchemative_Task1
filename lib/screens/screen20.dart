import 'package:flutter/material.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/screen21.dart';

//---------------Events/Screen20----------------//

final darkRed = Color(0xffbf2634);

class Screen20 extends StatelessWidget {
  Screen20();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Events'),
      body: ListView(
        children: [
          ImageCard(),
          ImageCard(),
          ImageCard(),
          ImageCard(),
          ImageCard(),
          ImageCard(),
          ImageCard(),
        ],
      ),
    );
  }
//--------------------------------------------------------------//

  Widget buildImageInteractionCard() => Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            
          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/image/landcafe.jpg'),
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                        child: Column(
                          children: [
                            Text(
                              '31',
                              style: TextStyle(fontSize: 40),
                            ),
                            Text('Jun',
                                style: TextStyle(
                                    color: darkRed, fontSize: 15)), //color red
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'This super leogue Lorem 2017',
                              style: TextStyle(
                                fontSize: 16,
                                color: darkRed,
                              ),
                            ), //color red
                            SizedBox(height: 10),
                            Text('16:04 20/10/2021',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Screen21()));
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/image/landcafe.jpg'),
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                      child: Column(
                        children: [
                          Text(
                            '31',
                            style: TextStyle(fontSize: 40),
                          ),
                          Text('Jun',
                              style: TextStyle(
                                  color: darkRed, fontSize: 15)), //color red
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'This super leogue Lorem 2017',
                            style: TextStyle(
                              fontSize: 16,
                              color: darkRed,
                            ),
                          ), //color red
                          SizedBox(height: 10),
                          Text('16:04 20/10/2021',
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
