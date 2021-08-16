import 'package:flutter/material.dart';
import 'package:task1app/screens/screen16.dart';

//----------------Custom App Bar---------------------//

class CusBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  CusBar(this.title);
  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(          //Icon used to pop back
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('$title', style: TextStyle(color: Colors.black)),   //Main Title
        actions: <Widget>[
          IconButton(     //bell Icon
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen16())); //Notification Screen16
            },
          )
        ],
      ),
    );
  }
}
