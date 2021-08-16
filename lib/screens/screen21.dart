import 'package:flutter/material.dart';
import 'package:task1app/screens/screen19.dart';
import 'package:task1app/screens/screen22.dart';

//---------------Home2/Screen21----------------//

final darkRed = Color(0xffbf2634);
final backColor = Color(0xffF4F4F4);

class Screen21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 900,
            color: bdColor,
            child: Stack(   //using stack to lap layers
              children: [
                Positioned(   //background image
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
                  ),
                ),
                Positioned(   //appbar adjusting
                    top: 20,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new),
                            color: Colors.black,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications),
                            color: Colors.black,
                          )
                        ],
                      ),
                    )),
                Positioned(     //body content
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.35,
                  right: 0,
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        // height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent, // containerRed
                          border:
                              Border(bottom: BorderSide(color: Colors.grey)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('This super league Lorem 2017',
                                          style: TextStyle(
                                              color: darkRed,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17)),
                                      SizedBox(height: 2),
                                      Text('Thu Oct 19, 2021 at 3:00pm',
                                          style: TextStyle(color: Colors.grey)),
                                    ]),
                                Text('admin',
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                            SizedBox(height: 35),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text('30 Members are goining',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 50,
                                    width: 140,
                                    // color: Colors.red,
                                    child: Stack( //using stck to lap pics over pics
                                      children: [
                                        Positioned(
                                          top: 0,
                                          left: 80,
                                          // right: 0,
                                          // bottom: 0,
                                          child: Container(
                                            // width: 50,
                                            // height: 50,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Color(0xffF4F4F4),
                                                borderRadius:
                                                    BorderRadius.circular(150)),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.white,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                    'assets/image/stevejobs.jpg'),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 40,
                                          child: Container(
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Color(0xffF4F4F4),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.white,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                    'assets/image/stevejobs.jpg'),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          // right: 0,
                                          // bottom: 0,
                                          child: Container(
                                            // width: 50,
                                            // height: 50,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                color: Color(0xffF4F4F4),
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundColor: Colors.white,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                    'assets/image/stevejobs.jpg'),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).
                                      push(MaterialPageRoute(builder: (contex) => Screen22()));
                                    },
                                    child: Text('SHOW'))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 370,
                    // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 180,
                        ),
                        Text(
                          'Event Detail',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            'Hello guys, we have discussed about past-corono \n vacation plan and our decision is to go to Bali. We will \n have a very big party after this corona ends!Hello guys, we have discussed about past-corono \n vacation plan and our decision is to go to Bali. We will \n have a very big party after this corona ends!')
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 600,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/map.jpg'),
                              fit: BoxFit.cover)),
                      height: 200,
                      // color: Colors.red,
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
