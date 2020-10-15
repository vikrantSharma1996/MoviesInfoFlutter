import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int positionIndex, currentIndex;
  const Indicator({this.positionIndex, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          // border: getBorder(),
          boxShadow: getShadow(), //Border.symmetric(vertical: BorderSide.none),
          color: positionIndex == currentIndex ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(100)),
    );
  }

/*  getBorder() {
    if (positionIndex == currentIndex) {
      return Border.all(color: Colors.green);
    } else
      return Border.symmetric(vertical: BorderSide.none);
  }*/

  getShadow() {
    if (positionIndex == currentIndex) {
      return [
        BoxShadow(color: Colors.green, spreadRadius: 3),
      ];
    } else
      return [
        BoxShadow(color: Colors.grey, spreadRadius: 0),
      ];
  }
}
