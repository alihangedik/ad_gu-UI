import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
  final String image;
  final String image2;
  final double topValue;
  final double leftValue;
  const Screens({
    Key? key,
    required this.image,
    required this.topValue,
    required this.leftValue,
    required this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: topValue,
          left: leftValue,
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 3.5,
            child: Image.asset(
              image,
            ),
          ),
        ),
        Container(
         height: 950,
         // MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width ,
          child: Image.asset(
            image2,
          ),
        )
      ],
    );
  }
}
