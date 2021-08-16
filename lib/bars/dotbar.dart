import 'package:flutter/material.dart';
import 'package:task1app/screens/screen11.dart';
import 'package:task1app/screens/screen12.dart';
import 'package:task1app/screens/screen16.dart';

class Topbar extends StatefulWidget {
  @override
  _TopbarState createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text('Performance', style: TextStyle(color: Colors.black)),
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
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.red,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Your Performance',
            ),
            Tab(
              text: 'Team Performance',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Screen12(),
          Screen11(),
        ],
      ),
    );
  }
}
