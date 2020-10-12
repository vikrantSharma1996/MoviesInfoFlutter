import 'package:flutter/material.dart';
import './Indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController;
  int currentIndex = 0;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
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
    onChangedFunction(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    nextFunction() {
      _pageController.nextPage(duration: _kDuration, curve: _kCurve);
    }

    previousFunction() {
      // _pageController.previousPage(duration: _kDuration, curve: _kCurve);
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            onPageChanged: onChangedFunction,
            controller: _pageController,
            children: <Widget>[
              Container(child: Text("First Screen")),
              Container(child: Text("Second Screen")),
              Container(child: Text("Third Screen"))
            ],
          ),
          Positioned(
            bottom: 60,
            left: 150,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                /* CustomPaint(
                  painter: PagI
                )*/
                Indicator(
                  positionIndex: 0,
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: currentIndex,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: currentIndex,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () => previousFunction(),
                      child: Text("SKIP",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () => nextFunction(),
                      child: Text("NEXT",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
