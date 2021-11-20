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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                    color: Color(0xffEDEEF0),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search",
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins-Regular",
                          color: Color(0xffBEC2CE),
                        ),
                        suffixIcon: Image.asset("assets/images/search.png")),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              CircleAvatar(
                child: Image.asset("assets/images/circle-avatar.png"),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            child: const Text(
              "Discover new places",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Poppins-ExtraBold",
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
