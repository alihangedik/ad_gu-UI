import 'package:ad_gu/widgets/screens.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  const [
            Screens(
              image: "assets/images/bg layouts.png",
              image2: "assets/images/content1-1.png",
              topValue: -135,
              leftValue: -91,
            ),
          ],
        ),
      ),
    );
  }
}
