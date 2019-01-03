import 'dart:async';

import 'package:all_in_one/constants/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;
  var _visible = true;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 2),
    );
    animation = new CurvedAnimation(
        parent: animationController, curve: Curves.bounceIn);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigateToHomePage);
  }

  void navigateToHomePage() {
    Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
            width: animation.value * 250,
            height: animation.value * 250,
          ),
        ],
      )),
    );
  }
}
