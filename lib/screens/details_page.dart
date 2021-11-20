import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/details-bg.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 25,
                          child: const Icon(
                            Icons.location_on,
                            color: Color(0xffBEC2CE),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Mont Blanc",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Poppins-ExtraBold",
                              color: Color(0xffBEC2CE),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        const Icon(Icons.bookmark)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380,
                    child: const Text(
                      "Climbing Mont Blanc in\nthe Winter",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Poppins-ExtraBold",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          "assets/images/stars.png",
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "235 Reviews",
                        style: TextStyle(
                        fontFamily: "Poppins-Regular",
                        color: Color(0xffBEC2CE)),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
