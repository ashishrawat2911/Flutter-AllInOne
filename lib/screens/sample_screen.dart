import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  final String text;

  SampleScreen(this.text);

  @override
  _SampleScreenState createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("${widget.text} Screen"),
    );
  }
}
