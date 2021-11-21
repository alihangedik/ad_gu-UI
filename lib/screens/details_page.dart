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
                  SizedBox(height: 10),
                  Container(
                    width: 375,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: Color(0xffBEC2CE),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Info(
                        image: "assets/images/distance.png",
                        text: "Distance",
                        value: "32 km",
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Info(
                        image: "assets/images/elevation.png",
                        text: "Elevation",
                        value: "2371 m",
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Info(
                        image: "assets/images/time.png",
                        text: "Time",
                        value: "24 h",
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 375,
                    child: const Text(
                      "Mont Blanc, Italian Monte Bianco, mountain massif and highest peak (15,771 feet [4,807 metres]) in Europe. Located in the Alps, the massif lies along the French-Italian border and reaches into Switzerland. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Poppins-Regular",
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FractionallySizedBox(
                    widthFactor: 2,
                    child: FlatButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 375,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xff515BDE),
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "BOOK FROM",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins-ExtraBold",
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "\$",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins-Regular",
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "845.00",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Poppins-ExtraBold",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  final image;
  final text;
  final value;
  const Info({
    Key? key,
    this.image,
    this.text,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          scale: 0.8,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(fontFamily: "Poppins-Regular", fontSize: 14),
            ),
            Text(
              value,
              style: TextStyle(fontFamily: "Poppins-ExtraBold", fontSize: 14),
            ),
          ],
        )
      ],
    );
  }
}
