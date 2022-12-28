import 'dart:async';
import 'package:flutter/material.dart';
import '/view/login.view.dart';
import '/view/signup.view.dart';

class Splashcreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<Splashcreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyLoginView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              './assets/tambong.jpg',
              width: 550,
              height: 550,
            ),
          ],
        ),
      ),
    );
  }
}
