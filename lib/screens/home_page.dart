import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  color: Color(0xffEDEEF0),
                  borderRadius: BorderRadius.circular(12)
                ),
              ),
              SizedBox(width: 15,),
              CircleAvatar(child: Image.asset("assets/images/circle-avatar.png"),)
            ],
          )
        ],
      ),
    );
  }
}
