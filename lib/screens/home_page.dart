import 'package:ad_gu/main.dart';
import 'package:ad_gu/screens/details_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 40,
              child: Image.asset(
                "assets/images/explore.png",
                scale: 0.8,
              ),
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 40,
                child: Image.asset(
                  "assets/images/my-trips.png",
                  scale: 0.8,
                ),
              ),
              label: "My Trips"),
          BottomNavigationBarItem(
              icon: SizedBox(height: 40,child: Image.asset("assets/images/favourite.png",  scale: 0.8,)),
              label: "Favourite")
        ],
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontFamily: "Poppins-SemiBold"),
        unselectedLabelStyle:
            const TextStyle(fontSize: 12, fontFamily: "Poppins-SemiBold"),
        selectedItemColor: const Color(0xffBEC2CE),
        unselectedItemColor: const Color(0xffBEC2CE),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffF7F8FA),
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
                      suffixIcon: Image.asset(
                        "assets/images/search.png",
                      ),
                    ),
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
            height: 10,
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
          SizedBox(
            height: 10,
          ),
          Row(
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
          CarouselSlider(
            options: CarouselOptions(
              height: 580,
              viewportFraction: 1,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              "assets/images/image-1.png",
              "assets/images/image-1.png",
              "assets/images/image-1.png",
              "assets/images/image-1.png",
              "assets/images/image-1.png"
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));},
                      child: Stack(
                        children: [
                          Image.asset(
                            "$i",
                          ),
                          Positioned(
                            top: 375,
                            left: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Climbing Mont Blanc\n in the Winter",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: "Poppins-ExtraBold",
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Image.asset(
                                    "assets/images/stars.png",
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "\$",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Regular",
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "845.00",
                                      style: TextStyle(
                                          fontFamily: "Poppins-ExtraBold",
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 165,
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "6531",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Regular",
                                          fontSize: 14,
                                          color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
