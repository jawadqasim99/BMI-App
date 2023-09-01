import 'package:flutter/material.dart';

class MyResult extends StatelessWidget {
  var result;
  var btncolor;
  var msgResult;
  MyResult({this.result, this.msgResult, this.btncolor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff0a0321),
          child: Center(
            child: Container(
              width: 350,
              height: 600,
              decoration: BoxDecoration(
                color: Color.fromARGB(155, 101, 100, 100),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Result",
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'mainfonts',
                        fontSize: 40),
                  ),
                  Text("$msgResult",
                      style: TextStyle(
                          color: btncolor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'mainfonts',
                          fontSize: 20)),
                  Text("$result",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'mainfonts',
                          fontSize: 70)),
                  Text("Thank You!!",
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'mainfonts',
                          fontSize: 20))
                ],
              ),
            ),
          ),
        ));
  }
}
