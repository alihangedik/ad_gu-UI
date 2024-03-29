
import 'package:ad_gu/main.dart';
import 'package:ad_gu/screens/signin_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                builder: (context) => HomePage(),
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
                "Log in",
                style: TextStyle(fontSize: 34, fontFamily: "Poppins-ExtraBold"),
              ),
            ),
          ),
          const SizedBox(height: 170),
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
                        "LOG IN",
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
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  child: Container(
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontFamily: "Poppins-SemiBold",
                        color: Color(0xffBEC2CE),
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Here for the first time?",
                      style: TextStyle(
                        fontFamily: "Poppins-Regular",
                        color: Color(0xffBEC2CE),
                      ),
                    ),
                    FlatButton(
                        child: const Text(
                          'Sign up',
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
