import 'dart:async';

import 'package:flutter/material.dart';
import './OnBoardingScreen.dart';

void main() {
  runApp(new MaterialApp(
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/OnBoardingScreen': (BuildContext context) => new OnBoardingScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.of(context).pushReplacementNamed('/OnBoardingScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(55)),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: new Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.fill,
                height: 80,
                width: 80,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
