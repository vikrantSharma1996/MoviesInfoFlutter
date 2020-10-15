import 'dart:core';

import 'package:MoviesInfoFlutter/intro/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'Indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController;
  int _currentIndex = 0;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  List<String> heading = [
    'A Cool Way to Get Start',
    'Design Interactive App UI',
    'It is just the beginning',
    'Fourth Screen'
  ];
  List<String> desc = [
    'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. when an\nunknown printer took a galley of type and\nscrambled it to make a type specimen book.',
    'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. when an\nunknown printer took a galley of type and\nscrambled it to make a type specimen book.',
    'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. when an\nunknown printer took a galley of type and\nscrambled it to make a type specimen book.',
    'Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry. when an\nunknown printer took a galley of type and\nscrambled it to make a type specimen book.',
  ];
  String textHolder;

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
        _currentIndex = index;
      });
      print('current index : $index');
    }

    nextFunction() {
      print('current index : $_currentIndex');
      if (_currentIndex < 3) {
        _currentIndex++;
        _pageController.nextPage(duration: _kDuration, curve: _kCurve);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      }
    }

    previousFunction() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            onPageChanged: onChangedFunction,
            controller: _pageController,
            children: <Widget>[
              //First Screen
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                //  mainAxisAlignment:
                children: <Widget>[
                  ClipOval(
                    child: new Image.asset(
                      'assets/images/slide1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      heading[0],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      desc[0],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
              //Second Screen
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                //  mainAxisAlignment:
                children: <Widget>[
                  ClipOval(
                    child: new Image.asset(
                      'assets/images/slide2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      heading[1],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      desc[1],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
              //Third Screen
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                //  mainAxisAlignment:
                children: <Widget>[
                  ClipOval(
                    child: new Image.asset(
                      'assets/images/slide3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      heading[2],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      desc[2],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
              //Fourth Screen
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
                //  mainAxisAlignment:
                children: <Widget>[
                  ClipOval(
                    child: new Image.asset(
                      'assets/images/slide4.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      heading[3],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      desc[3],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )),
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
                  currentIndex: _currentIndex,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 1,
                  currentIndex: _currentIndex,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 2,
                  currentIndex: _currentIndex,
                ),
                SizedBox(
                  width: 10,
                ),
                Indicator(
                  positionIndex: 3,
                  currentIndex: _currentIndex,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            child: Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => previousFunction(),
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
          Positioned(
            bottom: 10,
            right: 0,
            child: Container(
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => nextFunction(), //{
                    //   print('current index : $_currentIndex');

                    //   if (_currentIndex == 3) {
                    //     setState(() {
                    //       textHolder = 'DONE';
                    //     });
                    //   }
                    //     _pageController.nextPage(
                    //         duration: _kDuration, curve: _kCurve);

                    // },
                    child:
                        Text(textHolder = _currentIndex < 3 ? 'NEXT' : 'DONE',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
