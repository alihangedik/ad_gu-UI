import 'package:ad_gu/model/screens.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  _ScreenThreeState createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Screens(
        image: "assets/images/bg layouts.png",
        image2: "assets/images/content3-1.png",
        topValue: -135,
        leftValue: -922,
      ),
    );
  }
}
