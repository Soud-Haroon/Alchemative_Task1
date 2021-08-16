import 'package:flutter/material.dart';
import 'package:task1app/screens/screen21.dart';

//---------------MiniScreen/Screen22----------------//


class Screen22 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(           //using stack to wrap white widget over back
      children:[
        Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.black,
      ),
      Positioned(
          top: 0,
          left: 0,
          right: 80,
          child: Container(
            padding: EdgeInsets.all(10),
            // width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: 530,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Joined Members', style: TextStyle(color: Colors.red),)),
                  SizedBox(height: 10,),
                MiCard('Member Name', 'Designation'),
                MiCard('Member Name', 'Designation'),
                MiCard('Member Name', 'Designation'),
                MiCard('Member Name', 'Designation'),
                MiCard('Member Name', 'Designation'),
                MiCard('Member Name', 'Designation'),
              ],
            ),
          ),
        ),
        Positioned(     //positioned cross icon 
          top: 25,
          left: 270,
          right: 200,
          child: IconButton(
            icon: Icon(Icons.close, size: 30,), 
            onPressed: (){
                Navigator.of(context).
                  push(MaterialPageRoute(builder: (contex) => Screen21()));
            }))
      ],
      
    );
  }
}

class MiCard extends StatelessWidget {
  final String text;
  final String text1;
  MiCard(this.text, this.text1);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/image/stevejobs.jpg"),
          ),
        ),
        title: Text(text),
        subtitle: Text(text1,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ),
    );
  }
}
