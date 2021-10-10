import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/widget/input.dart';

class SignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFF343E95),
        // actions: <Widget>[
        //   FlatButton(
        //     onPressed: () {},
        //     child: Icon(Icons.search, color: Colors.white),
        //   ),
        //   FlatButton(
        //     onPressed: () {},
        //     child: Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     ),
        //   ),
        // ],
      ),
      backgroundColor: Color(0XFF343E95),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Hello...!',
                style: TextStyle(
                    fontFamily: 'jacklin', fontSize: 50.0, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              key: _formKey,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InputWid(
                      hint: 'Afolabi',
                      controller: null,
                      obsecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputWid(
                      hint: 'Oluwasegun',
                      controller: null,
                      obsecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputWid(
                      hint: 'leksguy@yahoo.com',
                      controller: null,
                      obsecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputWid(
                      hint: '907123567',
                      controller: TextEditingController(),
                      obsecure: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InputWid(
                      hint: 'Select Center',
                      controller: null,
                      obsecure: false,
                    ),
                    SizedBox(
                      height: 20,
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
                            'Signup',
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
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(top: 40),
                      child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'jacklin',
                            ),
                            text: 'Already have an account?',
                            children: <TextSpan>[
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pop();
                                  },
                                text: ' Login',
                                style: TextStyle(
                                  color: Color(0Xfff95f3b),
                                ),
                              ),
                            ]),
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
