import 'package:flutter/material.dart';
import 'package:task1app/bars/dotbar.dart';
import 'package:task1app/screens/screen19.dart';
import 'package:task1app/screens/screen23.dart';
import 'package:task1app/screens/screen30.dart';

//----------------bottom or Navigation Bar--------------------//

int? count;                   

class Nav extends StatefulWidget {
  Nav(int a){                 //Intializing Globle variable for indexing nav position
    count = a;
  }
  @override
  _NavState createState() => _NavState();
}

final darkRed = Color(0xffbf2634);

class _NavState extends State<Nav> {
  int _currentindex = count!;

  final tabs = [            //Assigning Tabs for bottom bar position Icon
    Center(child: Screen19()),
    Center(child: Topbar()),
    Center(child: Screen23()),
    Center(child: Screen30()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('home'),
                backgroundColor: Colors.transparent,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                title: Text('Performance'),
                backgroundColor: darkRed,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add),
                title: Text('Requests'),
                backgroundColor: darkRed,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz_outlined),
                title: Text('More'),
                backgroundColor: darkRed,
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            }));
  }
}
