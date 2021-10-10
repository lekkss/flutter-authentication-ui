import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/dashboard.dart';
import 'package:flutter_login_ui/screens/signup_page.dart';
import 'package:flutter_login_ui/widget/input.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final controller = TextEditingController();
  bool _isVisible = true;
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
                    InputWid(
                      hint: 'lekksguy@gmail.com',
                      controller: null,
                      obsecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputWid(
                      hint: '*******',
                      controller: controller,
                      obsecure: _isVisible,
                      suffixicon: IconButton(
                        icon: Icon(_isVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                      ),
                    ),
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
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => DashboardScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 35),
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontFamily: 'jacklin',
                          ),
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
}
