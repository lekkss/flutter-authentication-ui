import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/login.dart';

Future handleSplashLogic(ctx) async {
  Future.delayed(const Duration(seconds: 2), () async {
    Navigator.of(ctx).push(
      CupertinoPageRoute(
        builder: (context) => LogInPage(),
      ),
    );
    // to("cart", replace: true)
  });
}
