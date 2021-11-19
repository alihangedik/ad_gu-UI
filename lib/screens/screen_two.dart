import 'package:ad_gu/model/screens.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Screens(
        image: "assets/images/bg layouts.png",
        image2: "assets/images/content2.png",
        topValue: -135,
        leftValue: -510,
      ),
    );
  }
}
