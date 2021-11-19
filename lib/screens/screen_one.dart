import 'package:ad_gu/model/screens.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Screens(
        image: "assets/images/bg layouts.png",
        image2: "assets/images/content1.png",
        topValue: -135,
        leftValue: -91,
      ),
    );
  }
}
