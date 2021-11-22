import 'package:ad_gu/screens/details_page.dart';
import 'package:flutter/material.dart';

class DetailsReview extends StatefulWidget {
  const DetailsReview({Key? key}) : super(key: key);

  @override
  _DetailsReviewState createState() => _DetailsReviewState();
}

class _DetailsReviewState extends State<DetailsReview> {
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
                builder: (context) => DetailsPage(),
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
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "REVIEWS",
                  style: TextStyle(
                      fontFamily: "Poppins-ExtraBold", color: Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "15",
                    style: TextStyle(
                        fontFamily: "Poppins-ExtraBold", color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                    height: 28,
                    width: 154,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xff515BDE), width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/pencil.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Write a Review",
                          style: TextStyle(
                              fontFamily: "Poppins-Bold",
                              color: Color(0xff515BDE)),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 40),
          SizedBox(
            height: 611,
            width: 360,
            child: ListView(
              children: [
                Column(
                  children: [
                    const ListViewContent(
                      image: "assets/images/john-doe.png",
                      name: "Jonh Doe",
                      time: "2 hours ago",
                      text:
                          "There are many variations of\npassages of Lorem Ipsum available,\nbut the majority have suffered",
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 280,
                          child: Divider(
                            color: Color(0xffEAECEF),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/images/reply.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Reply",
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold",
                                color: Color(0xffBEC2CE)))
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ListViewContent(
                      image: "assets/images/lorem-ipsum.png",
                      name: "Lorem Ipsum",
                      time: "16 hours",
                      text:
                          "Richard McClintock, a Latin professor\nat Hampden-Sydney College in\nVirginia, looked up one of the more",
                    ),
                     const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 280,
                          child: Divider(
                            color: Color(0xffEAECEF),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/images/reply.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Reply",
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold",
                                color: Color(0xffBEC2CE)))
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ListViewContent(
                      image: "assets/images/jonh-doe-2.png",
                      name: "Jonh Doe",
                      time: "4 days",
                      text:
                          "Contrary to popular belief, Lorem\nIpsum is not simply random text. It has\nroots in a piece of classical Latin ",
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 280,
                          child: Divider(
                            color: Color(0xffEAECEF),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("assets/images/reply.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Reply",
                            style: TextStyle(
                                fontFamily: "Poppins-SemiBold",
                                color: Color(0xffBEC2CE)))
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ListViewContent(
                      image: "assets/images/lorem-ipsum-2.png",
                      name: "Lorem Ipsum",
                      time: "2 weeks",
                      text:
                          "Contrary to popular belief, Lorem\nIpsum is not simply random text. It has\nroots in a piece of classical Latin ",
                    )
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class ListViewContent extends StatelessWidget {
  final image;
  final name;
  final time;
  final text;
  const ListViewContent({
    Key? key,
    this.image,
    this.name,
    this.time,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            child: Image.asset(image),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style:
                    TextStyle(fontSize: 14, fontFamily: "Poppins-ExtraBold")),
            Row(
              children: [
                Image.asset("assets/images/time-icon.png"),
                const SizedBox(
                  width: 5,
                ),
                Text(time,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins-Regular",
                        color: Color(0xffBEC2CE)))
              ],
            ),
            Text(
              text,
              style: TextStyle(fontFamily: "Poppins-Light", fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
