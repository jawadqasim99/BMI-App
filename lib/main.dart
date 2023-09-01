import 'package:bmiapp/result.dart';
import 'package:bmiapp/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        fontFamily: 'mainfonts',
        useMaterial3: true,
      ),
      home: MySplash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _hight = 0;
  var cuurentValue = 0;
  var currentinch = 0;
  var msgColor;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80),
        height: double.infinity,
        width: double.infinity,
        color: Color(0xff0a0321),
        child: Column(children: [
          RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 40, fontFamily: 'mainfonts'),
                  children: [
                TextSpan(text: 'BMI ', style: TextStyle(color: Colors.pink)),
                TextSpan(text: 'Calculation')
              ])),
          Container(
            padding: EdgeInsets.only(top: 25, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 150,
                    width: 190,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(155, 101, 100, 100),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 100,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          "Male",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'mainfonts',
                              fontSize: 15),
                        )
                      ],
                    )),
                Container(
                  height: 150,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(155, 101, 100, 100),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.female),
                        color: Colors.white,
                        iconSize: 100,
                      ),
                      Text(
                        "Fe Male",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'mainfonts',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromARGB(155, 101, 100, 100),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Weight",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'mainfonts'),
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '${_hight.toStringAsFixed(0)}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontFamily: 'mainfonts')),
                  TextSpan(
                      text: 'kg',
                      style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'mainfonts',
                          fontSize: 25))
                ])),
                Container(
                    child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      trackHeight: 2,
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x15eb1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20)),
                  child: Slider(
                    onChanged: (newvalue) {
                      setState(() {
                        _hight = newvalue;
                      });
                    },
                    max: 220,
                    min: 0,
                    value: _hight,
                  ),
                )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  // padding: EdgeInsets.only(bottom: 20),
                  height: 150,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(155, 101, 100, 100),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hight(FT)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'mainfonts')),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '$cuurentValue',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: 'mainfonts')),
                        TextSpan(
                            text: 'FT',
                            style: TextStyle(
                                color: Colors.pink,
                                fontFamily: 'mainfonts',
                                fontSize: 25))
                      ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (cuurentValue <= 0) {
                                  cuurentValue = 0;
                                } else {
                                  cuurentValue--;
                                }
                              });
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0a0321),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                cuurentValue++;
                              });
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0a0321),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(155, 101, 100, 100),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hight(INCH)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'mainfonts')),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '$currentinch',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: 'mainfonts')),
                        TextSpan(
                            text: 'IN',
                            style: TextStyle(
                                color: Colors.pink,
                                fontFamily: 'mainfonts',
                                fontSize: 25))
                      ])),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (currentinch <= 0) {
                                  currentinch = 0;
                                } else {
                                  currentinch--;
                                }
                              });
                            },
                            child: Text(
                              "-",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0a0321),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                currentinch++;
                              });
                            },
                            child: Text(
                              "+",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0a0321),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              var wt = int.parse(_hight.toStringAsFixed(0));
              var ft = cuurentValue;
              var inch = currentinch;
              if (wt != 0 && ft != 0) {
                var tinch = (ft * 12) + inch;
                var cm = tinch * 2.54;
                var tm = cm / 100;

                var bmi = wt / (tm * tm);
                var msg = '';
                if (bmi > 25) {
                  msg = 'Over Weight';
                  msgColor = Colors.orange;
                } else if (bmi < 18) {
                  msg = 'Under Weight';
                  msgColor = Colors.red;
                } else {
                  msg = "Normal";
                  msgColor = Colors.green;
                }

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyResult(
                              result: bmi.toStringAsFixed(0),
                              msgResult: msg,
                              btncolor: msgColor,
                            )));
              } else {
                print("entervalue");
              }
              ;
            },
            child: Text(
              'Calculation',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.white))),
          ),
        ]),
      ),
    );
  }
}
