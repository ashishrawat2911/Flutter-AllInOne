import 'package:all_in_one/constants/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All In One"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Bottam Navigation"),
            leading: Icon(Icons.ac_unit),
            onTap: () {
              Navigator.pushNamed(context, BOTTOM_NAVIGATION_SCREEN);
            },
          )
        ],
      ),
    );
  }
}
