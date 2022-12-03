import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:ui';

import 'user_auth.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(232, 240, 255, 1),
        ),
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.all(25),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 30),
              Image.asset("assets/images/gtracker.png"),
              Container(height: 42),
              CircularProgressIndicator(
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlue),
              ),
              Container(
                height: 110,
              ),
              Expanded(
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/images/sltc.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
