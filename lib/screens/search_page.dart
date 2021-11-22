import 'package:flutter/material.dart';


import 'home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 40,
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
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
        backgroundColor: const Color(0xffF7F8FA),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 9,
            decoration: const BoxDecoration(
              color: Color(0xffF7F8FA),
            ),
            alignment: Alignment.centerLeft,
            child: const Align(
              alignment: Alignment(-0.88, -0.5),
              child: Text(
                "Search",
                style: TextStyle(fontSize: 34, fontFamily: "Poppins-ExtraBold"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 375,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent search",
                  style:
                      TextStyle(fontSize: 24, fontFamily: "Poppins-ExtraBold"),
                ),
                Row(
                  children: const [
                    Text(
                      "Clear all",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Poppins-Regular",
                        color: Color(0xffBEC2CE),
                      ),
                    ),
                    Icon(
                      Icons.close,
                      color: Color(0xffBEC2CE),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
             mainAxisSpacing: 60,
                
              ),
              children: [
                Image.asset('assets/images/grid-1.png'),
                Image.asset('assets/images/grid-2.png'),
                Image.asset('assets/images/grid-3.png'),
                Image.asset('assets/images/grid-4.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
