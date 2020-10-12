import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController;
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
    controller: _pageController,
    children: <Widget>[
      Container(
        child: Text("First Screen")
      ),
      Container(
        child: Text("Second Screen")
      ),
      Container(
        child: Text("Third Screen")
      )

    ],
  ),
    );
  }
}