import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: <Widget>[
      //     FlatButton(
      //       onPressed: () {},
      //       child: Icon(Icons.search, color: Colors.white),
      //     ),
      //     FlatButton(
      //       onPressed: () {},
      //       child: Icon(
      //         Icons.menu,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),
      backgroundColor: Color(0XFF343E95),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
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
                    _input('Afolabi', null, false),
                    SizedBox(
                      height: 20,
                    ),
                    _input('Oluwasegun', null, false),
                    SizedBox(
                      height: 20,
                    ),
                    _input('leksguy@yahoo.com', null, false),
                    SizedBox(
                      height: 20,
                    ),
                    _input('907123567', TextEditingController(), false),
                    SizedBox(
                      height: 20,
                    ),
                    _input('Select Center', null, false),
                    SizedBox(
                      height: 20,
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
                            style: TextStyle(fontSize: 15, color: Colors.white),
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
              color: Colors.white.withOpacity(.2)),
          hintText: hint,
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Colors.white,
          //     width: 2,
          //   ),
          // ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(30),
          //   borderSide: BorderSide(
          //     color: Colors.white,
          //     width: 3,
          //   ),
          // ),
        ),
      ),
    );
  }
}
