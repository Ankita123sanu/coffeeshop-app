import 'dart:math';

import 'package:coffeeshop/categorydetailspage.dart';
import 'package:coffeeshop/coffeedetailspage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// import 'package:coffeeshop/itemsmodel.dart';
// import 'package:coffeeshop/itemsdata.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> images = [
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png"
  ];
  List<String> titles = [
    "Hot Cappuccino",
    "Hot Cappuccino",
    "Hot Cappuccino",
    "Hot Cappuccino",
    "Hot Cappuccino"
  ];
  List<String> desc = [
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk"
  ];
  List<String> boimages = [
    "assets/rec.png",
    "assets/rec.png",
    "assets/rec.png",
    "assets/rec.png",
    "assets/rec.png"
  ];
  List<String> botitles = [
    "Hot Cappuccino",
    "Hot Cappuccino",
    "Hot Cappuccino",
    "Hot Cappuccino",
    "Hot Cappuccino"
  ];
  List<String> bodesc = [
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk",
    "Espresso, Steamed Milk"
  ];
  List<IconData> items = [
    Icons.home,
    Icons.person_outlined,
    Icons.account_balance,
    Icons.delete,
    Icons.message,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 327,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Image(image: AssetImage("assets/5b.png")),
                SizedBox(width: 40),
                Image(image: AssetImage("assets/1b.png")),
                SizedBox(width: 40),
                Image(image: AssetImage("assets/4b.png")),
                SizedBox(width: 40),
                Image(image: AssetImage("assets/2b.png")),
                SizedBox(width: 40),
                Image(image: AssetImage("assets/3b.png")),
              ],
            ),
          ),
        ),
      ),
      // appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/loginpic.jpeg"), fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.white38,
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                child: Column(
                  children: [
                    // Container(
                    // child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(children: [
                            Image.asset("assets/waveing.png"),
                            SizedBox(
                              width: 15,
                            ),
                            Text("20/12/2022\nJoshua Scanlan"),
                            SizedBox(width: 31),
                            Image.asset("assets/Group.png"),
                            SizedBox(
                              width: 2,
                            ),
                            Image.asset("assets/Ellipse.png")
                          ]),
                        ),
                      ),
                    ),
                    // ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          color: Colors.white,
                          margin:
                              EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                          // padding:
                          // EdgeInsets.symmetric(horizontal: 3, vertical: 1.2),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Search favourite Beverages",
                                      prefixIcon: Icon(Icons.search),
                                      border: InputBorder.none
                                      // border: OutlineInputBorder(
                                      //     borderSide: BorderSide.none,
                                      //     borderRadius: BorderRadius.circular(8))
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      color: Colors.black54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 13),
                            child: Text(
                              "Most Popular Beverages",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 300,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: images.length,
                                itemBuilder: (context, index) {
                                  return categorytile(
                                    imageurl: images[index],
                                    title: titles[index],
                                    desci: desc[index],
                                    // desci2: desc2[index],
                                    // nostar: stars[index],
                                    // noratings: cust[index],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.black45,
                      // height: MediaQuery.of(context).size.height,
                      // width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15),
                            child: Text(
                              "Get it Instantly",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 700,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                itemCount: images.length,
                                itemBuilder: (context, index) {
                                  return Blogtile(
                                    imageurl: boimages[index],
                                    title: botitles[index],
                                    desc: bodesc[index],
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class categorytile extends StatelessWidget {
  final String imageurl, title, desci;
  const categorytile({
    super.key,
    required this.imageurl,
    required this.title,
    required this.desci,
  });
  @override
  Widget build(BuildContext context) {
    // print(imageurl);
    return Flexible(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => categorydetailspage()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 6),
          child: Container(
            child: Stack(
              children: [
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white24,
                  child: Container(
                    width: 200,
                    // color: Colors.white12,
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Image(image: AssetImage(imageurl))),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text(
                        desci,
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "4.9",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(image: AssetImage("assets/star.png")),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "(458)",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 47,
                            ),
                            Image(image: AssetImage("assets/add.png")),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Blogtile extends StatelessWidget {
  final String imageurl, title, desc;
  Blogtile({
    super.key,
    required this.imageurl,
    required this.title,
    required this.desc,
  });
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => detailspage()));
        },
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height / 3.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Material(
                color: Colors.white24,
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                // shadowColor: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Latte",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "4.9",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Image(
                                image: AssetImage("assets/star.png"),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "(458)",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Image(image: AssetImage("assets/Image.png"))
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Caffè latte is a milk coffee that \n is a made up of one or twoshots \n of espresso,steamed milk",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              imageurl,
                              height: 125,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
