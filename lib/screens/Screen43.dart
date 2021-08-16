import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task1app/bars/appbar.dart';
import 'package:task1app/screens/Screen44.dart';
import 'screen15.dart';

final orange = Colors.orange[400];
final green = Colors.green[400];
final red = Colors.red[400];
final white = Colors.white;

class Screen43 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CusBar('Performance'),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            Center(
              child: Text(
                'Learning',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            StarReview(orange,'On Job Learing', orange),
            StarReview(green, 'Functional',green),
            StarReview(red, 'Softskills', red),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Screen44()));
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 130, right: 130, top: 20, bottom: 20)),
                    elevation: MaterialStateProperty.all(7),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: BorderSide(color: Colors.red)
                    ))),
                child: Text('Next')),
          ],
        ),
      ),
    );
  }
}

class StarReview extends StatelessWidget {
  String text;
  var textColor;
  var colors;

  StarReview(this.colors, this.text, this.textColor);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 120,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: colors,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: 10,
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$text',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                  ),
                  SizedBox(height: 10),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 6.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
