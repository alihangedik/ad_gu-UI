import 'package:ad_gu/main.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
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
                builder: (context) => LoginPage(),
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
                "Sign up",
                style: TextStyle(fontSize: 34, fontFamily: "Poppins-ExtraBold"),
              ),
            ),
          ),
          const SizedBox(height: 150),
          Container(
            width: 331,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffBEC2CE), width: 2),
                    ),
                    labelText: "Name",
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins-Regular",
                      color: Color(
                        0xffBEC2CE,
                      ),
                    ),
                    prefixIcon: Image.asset(
                      "assets/images/user.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffBEC2CE), width: 2),
                    ),
                    labelText: "Email",
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins-Regular",
                      color: Color(
                        0xffBEC2CE,
                      ),
                    ),
                    prefixIcon: Image.asset(
                      "assets/images/email.png",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffBEC2CE), width: 2),
                    ),
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins-Regular",
                      color: Color(
                        0xffBEC2CE,
                      ),
                    ),
                    prefixIcon: Image.asset(
                      "assets/images/locker.png",
                    ),
                  ),
                ),
                SizedBox(height: 40),
                FractionallySizedBox(
                  widthFactor: 2,
                  child: FlatButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 331,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xff515BDE),
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                      ),
                      child: const Text(
                        "SIGN UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins-ExtraBold",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have an account?",
                      style: TextStyle(
                        fontFamily: "Poppins-Regular",
                        color: Color(0xffBEC2CE),
                      ),
                    ),
                    FlatButton(
                        padding: EdgeInsets.all(0),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            fontFamily: "Poppins-SemiBold",
                            color: Color(0xff515BDE),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SigninPage(),
                            ),
                          );
                        })
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
