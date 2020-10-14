import 'package:flutter/material.dart';
import './Indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pageController;
  int _currentIndex = 0;
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

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
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset('assets/images/slide1.png'),
                  Text(
                    'A Cool Way To Get Start',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset('assets/images/slide2.png'),
                  Text(
                    'Design Interactive App UI',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset('assets/images/slide3.png'),
                  Text(
                    'Its Just The Beginning',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Image.asset('assets/images/slide4.png'),
                  Text(
                    'Design Iteractive App UI',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      textAlign: TextAlign.center,
                    ),
                  )
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
