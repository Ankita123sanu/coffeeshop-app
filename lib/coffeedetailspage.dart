import 'package:coffeeshop/columsswitches.dart';
import 'package:coffeeshop/quantitybox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class detailspage extends StatefulWidget {
  const detailspage({super.key});

  @override
  State<detailspage> createState() => _detailspageState();
}

class _detailspageState extends State<detailspage> {
  // List<String> quan = ["Full", "1/2 Full", "3/4 Full", "1/4 Full"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 327,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Image(image: AssetImage("assets/Rectangle 22.png")),
                SizedBox(width: 9),
                Text(
                  "High Priority",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  width: 8,
                ),
                Image(image: AssetImage("assets/error 1.png")),
                SizedBox(width: 20),
                // Material(
                //   elevation: 7,
                //   borderRadius: BorderRadius.circular(40),
                //   child:
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      // color: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, left: 37),
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    )
                  ],
                ),
                //   )
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/loginpic.jpeg"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: EdgeInsets.all(0.0),
              // child: SingleChildScrollView(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Stack(
                    //   children: [
                    Container(
                      // height: 350,
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/rec1.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    // ],
                    // )
                    Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        // height: 800,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),
                            border:
                                Border.all(color: Colors.white10, width: 2.1),
                            // color: Color.fromARGB(66, 238, 231, 231)
                            color: Colors.white38),
                        // color: Color.fromARGB(179, 154, 150, 150),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Latte",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 170,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 27,
                                      width: 54,
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: Text("1"),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Image.asset("assets/line.png"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Image.asset("assets/arrow.png"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("4.9"),
                                SizedBox(
                                  width: 12,
                                ),
                                Image.asset("assets/star.png"),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("(458)"),
                                SizedBox(
                                  width: 20,
                                ),
                                Image.asset("assets/Image.png"),
                              ],
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Caffè latte is a milk coffee that is a made up of\none or two shots of espresso, steamed milk\nand a final, thin layer of frothed milk on top",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Choice of Cup Filling",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            // ListView(
                            //   scrollDirection: Axis.horizontal,
                            //   children: [
                            Container(
                              height: 30,
                              // width: 40,
                              // color: Colors.white,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  quantitybox(
                                    text: 'Full',
                                    isselected: true,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  quantitybox(
                                    text: '1/2 Full',
                                    isselected: false,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  quantitybox(
                                    text: '3/4 Full',
                                    isselected: false,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  quantitybox(
                                    text: '1/4 Full',
                                    isselected: false,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Choices of Milk",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            Column(
                              children: [
                                Row(
                                  children: [
                                    switchlist(
                                      text: 'Skim Milk',
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    switchlist(
                                      text: 'Full Cream Milk',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    switchlist(
                                      text: 'Almond Milk',
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    switchlist(
                                      text: 'Oat Milk',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                switchlist(
                                  text: 'Soy Milk',
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                switchlist(
                                  text: 'Lactose Free Milk',
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text("Choices of Sugar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    switchlist(
                                      text: 'Sugar X1',
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    switchlist(
                                      text: 'Sugar X2',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  children: [
                                    switchlist(
                                      text: '1/2 Sugar',
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    switchlist(
                                      text: 'No Sugar',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        // ],
                      ),
                      // ),
                    ]),
                  ],
                ),
              ),
              // ),
              // ),
            )),
      ),
    );
  }
}

// class quantitybuttton extends StatelessWidget {
//   final String text;
//   const quantitybuttton({super.key, required this.text});
//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       Container(
//         height: 20,
//         width: 45,
//         color: Colors.white70,
//       ),
//       Text(
//         text,
//         style: TextStyle(color: Colors.black, fontSize: 15),
//       ),
//     ]);
//   }
// }
