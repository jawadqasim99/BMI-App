import 'dart:async';

import 'package:bmiapp/main.dart';
import 'package:flutter/material.dart';

class MySplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashState();
}

class SplashState extends State<MySplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MyHomePage(title: 'BMI')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xff0a0321),
        child: Center(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
                text: 'BMI ',
                style: TextStyle(
                    color: Colors.pink, fontSize: 50, fontFamily: 'mainfonts')),
            TextSpan(
                text: 'Calculator',
                style: TextStyle(
                    fontFamily: 'mainfonts', color: Colors.white, fontSize: 40))
          ])),
        ),
      ),
    );
  }
}
