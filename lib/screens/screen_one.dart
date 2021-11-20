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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          Screens(
            image: "assets/images/bg layouts.png",
            image2: "assets/images/content1.png",
            topValue: -135,
            leftValue: -91,
          ),
          Text(
            "Popularised in the 1960s with the release of Letraset sheets co",
            style: TextStyle(fontSize: 2),
          )
        ],
      ),
    );
  }
}
