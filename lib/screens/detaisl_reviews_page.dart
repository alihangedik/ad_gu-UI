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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "REVIEWS",
                style: TextStyle(
                    fontFamily: "Poppins-ExtraBold", color: Colors.black),
              ),
              SizedBox(
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
                child: Text(
                  "15",
                  style: TextStyle(
                      fontFamily: "Poppins-ExtraBold", color: Colors.white),
                ),
              ),
              SizedBox(width: 100,),
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
                    SizedBox(width: 5,),
                    Text("Write a Review",style: TextStyle(
                      fontFamily: "Poppins-ExtraBold", color: Color(0xff515BDE)),),
                  ],
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
