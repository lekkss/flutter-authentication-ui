import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF343E95),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              child: Image(
                image: AssetImage('assets/images/clipart4787933.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontFamily: 'jacklin',
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                    Text(
                      'Back',
                      style: TextStyle(
                          fontFamily: 'jacklin',
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _input('lekksguy@gmail.com', null, false),
                    SizedBox(
                      height: 20,
                    ),
                    _input('********', TextEditingController(), true),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: null,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FlatButton(
                      // color: Color(0Xfff95f3b),
                      // padding: EdgeInsets.all(15),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(30),
                      // ),
                      child: Container(
                        width: 100,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0Xfff95f3b),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: null,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 15, color: Colors.white),
                          text: 'New User?',
                          children: <TextSpan>[
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(
                                    CupertinoPageRoute(
                                      builder: (context) => SignUp(),
                                    ),
                                  );
                                },
                              text: ' SignUp',
                              style: TextStyle(
                                color: Color(0Xfff95f3b),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _input(String hint, TextEditingController controller, bool obsecure) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white.withOpacity(.2),
      ),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        controller: controller,
        obscureText: obsecure,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white.withOpacity(.2),
          ),
          hintText: hint,
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Theme.of(context).primaryColor,
          //     width: 2,
          //   ),
          // ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Theme.of(context).primaryColor,
          //     width: 3,
          //   ),
          // ),
        ),
      ),
    );
  }
}
