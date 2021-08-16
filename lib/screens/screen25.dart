import 'package:flutter/material.dart';
import 'screen16.dart';

//---------------Create Request/Screen25----------------//

// ignore: must_be_immutable
class Screen25 extends StatelessWidget {
  String request = 'Request Type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Create Request',
          style: TextStyle(color: Colors.black),
        ),
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
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Drop(request),
        ],
      ),
    );
  }
}

//------------------Code Below------------------//

class Drop extends StatefulWidget {
  String hintTxt;
  Drop(this.hintTxt);
  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  final textFieldColor = Color(0xffFFFFFA);

  String? dropdownvalue;
  var items = [
    // 'Gender',
    '1',
    '2',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffFFFFFA),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                hint: Text(
                  '${widget.hintTxt}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
