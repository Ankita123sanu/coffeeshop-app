import 'package:coffeeshop/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  // TextEditingController email = TextEditingController();
  // TextEditingController pass = TextEditingController();
  // signin() async {
  //   await FirebaseAuth.instance
  //       .signInWithEmailAndPassword(email: email.text, password: pass.text);
  // }

  // signup() async {
  //   await FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: email.text, password: pass.text);
  //   Get.offAll(loginpage());
  // }
  final String text = "Latte but Never late";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/loginpic.jpeg"), fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white30,
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 80),
              // child: SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/logo1.png"),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "Swift",
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Cafe",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.all(6),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                text,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        TextField(
                          // controller: email,
                          decoration: InputDecoration(
                              //  border: ,
                              hintText: 'User Name',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                        TextField(
                          // controller: pass,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 45,
                          width: 210,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.brown,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 20),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 45,
                          width: 210,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  side: BorderSide(
                                      width: 2, color: Colors.white54)),
                              onPressed: () {},
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 20),
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ]),
      ),
    );
  }
}
