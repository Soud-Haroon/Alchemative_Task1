import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:task1app/bars/navbar.dart';
import 'package:task1app/screens/screen4.dart';

//-------Main Login Screen------//

// ignore: camel_case_types
class Log extends StatefulWidget {
  Log();
  @override
  _LogState createState() => _LogState();
}

// ignore: camel_case_types
class _LogState extends State<Log> {
  late String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: SingleChildScrollView(
            child: Column(            //using Column to align widgets
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(       //Main Logo
                  backgroundColor: Colors.white10,
                  radius: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/image/logo2.png"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                //---------Two TextFields for email/password
                TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    onChanged: (value) {
                      data = value;
                    }),

                SizedBox(
                  height: 10,
                ),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    onChanged: (value) {
                      data = value;
                    }),
// --------------------------------------------------------------//

                SizedBox(height: 40),
                SizedBox(
                  height: 60.0,
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: ElevatedButton(      //Login Button push to Screen4
                      child: Text('Log In'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffBF2634),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Screen4()));
                      },
                    ),
                  ),
                ),
                Center(         //textbutton for singup/forget
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child: Text('Sign Up'),
                        style: ElevatedButton.styleFrom(),
                        onPressed: () {
                        },
                      ),
                      SizedBox(width: 100),
                      TextButton(
                        child: Text('Forget Password'),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70), 
                // with custom text
                SizedBox(
                  height: 60,
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: SignInButton(  //Google button using dependencies
                      Buttons.Google,
                      text: "Log In with Google",
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Nav(0)));//Nav is Bottom Bar spereted in lib/bars/navbar.dart
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
