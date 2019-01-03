import 'package:all_in_one/screens/sample_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationPage> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> viewContainer = [
    SampleScreen("First"),
    SampleScreen("Second"),
    SampleScreen("Third"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Gallery"),
        ),
        body: viewContainer[currentIndex],
        bottomNavigationBar: new BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  title: Text("First"), icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(
                  title: Text("Second"), icon: Icon(Icons.ac_unit)),
              BottomNavigationBarItem(
                  title: Text("Third"), icon: Icon(Icons.ac_unit))
            ]));
  }
}
