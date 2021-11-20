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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Screens(
              image: "assets/images/bg layouts.png",
              image2: "assets/images/content1-1.png",
              topValue: -135,
              leftValue: -91,
            ),
            /* Container(
              width: 300,
              child: const Text(
                "Popularised in the 1960s with the release of Letraset sheets co", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontFamily:"Poppins-ExtraBold"),
              ),
            ),
            Container(
              width: 300,
              child: const Text(
                "Popularised in the 1960s with the release of Letraset sheets co", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontFamily:"Poppins-ExtraBold"),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
