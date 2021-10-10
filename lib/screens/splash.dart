import 'package:flutter/material.dart';
import 'package:flutter_login_ui/shared/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    handleSplashLogic(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF343E95),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                    fontFamily: 'jacklin', fontSize: 40.0, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0Xfff95f3b),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
