import 'package:flutter/material.dart';

import 'home_page.dart';

class GuidesAndTicketsPage extends StatefulWidget {
  const GuidesAndTicketsPage({Key? key}) : super(key: key);

  @override
  _GuidesAndTicketsPageState createState() => _GuidesAndTicketsPageState();
}

class _GuidesAndTicketsPageState extends State<GuidesAndTicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffEAECEF),
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.more_vert_rounded,
                  size: 30,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22.0, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "GUIDES & TICKETS",
                  style: TextStyle(
                      fontFamily: "Poppins-ExtraBold",
                      color: Colors.black,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 640,
            width: 360,
            child: ListView(
              children: [
                const TicketsComponent(
                  image: "assets/images/tickets-1.png",
                  name: "Caucasus Mountains,\nGeorgia",
                  starValue: "4.5",
                  reviewsValue: "24",
                  price: "29",
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    color: Color(0xffBEC2CE),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 340,
                      child: Divider(
                        color: Color(0xffEAECEF),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TicketsComponent(
                  image: "assets/images/tickets-2.png",
                  name: "The Carpathian Mountains\n- National Parks",
                  starValue: "4.0",
                  reviewsValue: "45",
                  price: "95",
                  icon: Icon(
                    Icons.bookmark_border_rounded,
                    color: Color(0xffBEC2CE),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 340,
                      child: Divider(
                        color: Color(0xffEAECEF),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TicketsComponent(
                  image: "assets/images/tickets-3.png",
                  name: "The Pirin Mountains,\nBulgarian",
                  starValue: "3.9",
                  reviewsValue: "100",
                  price: "29",
                  icon: Icon(
                    Icons.bookmark,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 340,
                      child: Divider(
                        color: Color(0xffEAECEF),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const TicketsComponent(
                  image: "assets/images/tickets-4.png",
                  name: "Climbing Mont Blanc in the\nWinter",
                  starValue: "3.5",
                  reviewsValue: "67",
                  price: "63",
                  icon: Icon(
                    Icons.bookmark,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 340,
                      child: Divider(
                        color: Color(0xffEAECEF),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TicketsComponent extends StatelessWidget {
  final image;
  final name;
  final starValue;
  final reviewsValue;
  final price;
  final icon;
  const TicketsComponent({
    Key? key,
    this.image,
    this.name,
    this.starValue,
    this.reviewsValue,
    this.price,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          scale: 0.9,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 16, fontFamily: "Poppins-Bold"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset("assets/images/single-star.png", scale: 0.8),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  starValue,
                  style: const TextStyle(
                    fontFamily: "Poppins-ExtraBold",
                    fontSize: 16,
                    color: Color(0xffBEC2CE),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "| $reviewsValue reviews",
                  style: const TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 16,
                    color: Color(0xffBEC2CE),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "from",
                  style: TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 16,
                    color: Color(0xffBEC2CE),
                  ),
                ),
                const Text(
                  "\$",
                  style: TextStyle(
                    fontFamily: "Poppins-Light",
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                Container(child: icon)
              ],
            )
          ],
        )
      ],
    );
  }
}
