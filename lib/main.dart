import 'package:all_in_one/constants/constant.dart';
import 'package:all_in_one/screens/bottom_navigation.dart';
import 'package:all_in_one/screens/home_page.dart';
import 'package:all_in_one/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        routes: <String, WidgetBuilder>{
          HOME_SCREEN: (BuildContext context) => new HomePage(),
          ANIMATED_SPLASH: (BuildContext context) => new SplashScreen(),
          BOTTOM_NAVIGATION_SCREEN: (BuildContext context) =>
              new BottomNavigationPage(),
        },
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
