import 'package:flutter/material.dart';

class InputWid extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obsecure;
  final IconButton suffixicon;
  InputWid(
      {Key key, this.hint, this.controller, this.obsecure, this.suffixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          suffixIcon: suffixicon,
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
