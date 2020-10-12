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
    var _duration = new Duration(seconds: 3);
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
    return Scaffold(body:  Container(
      
      child: new Image.asset(
        'assets/images/logo.png',
        //fit: BoxFit.cover,
        // height: double.infinity,
        // width: double.infinity,
      ),
    ),);
    
  }
}
