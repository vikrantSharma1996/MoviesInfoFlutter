import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                    child: new Image.asset(
                  'assets/images/movie.png',
                  fit: BoxFit.cover,
                )),
                Text(
                  'Welcome',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'let start with few steps',
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40),
          GestureDetector(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      'continue',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ))),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
