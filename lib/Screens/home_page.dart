// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home_page extends StatefulWidget {
  home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _homeState();
}

class _homeState extends State<home_page> {
  List<String> navbar = [
    "All",
    "Popular",
    "Rating",
    "Most searched",
    "Budget",
    "Mountains",
    "Rivers",
    "Family",
    "Couples"
  ];
  List<String> dest = [
    "Eiffel  Tower",
    "Sky Dive",
    "Taj Mahal",
    "Danveer Mountains",
    "London Bridge",
    "Boat House",
    "Beach",
    "Arab"
  ];
  List<String> place = [
    "Paris,France",
    "United Arab Emirates,Dubai",
    "Agra,India",
    "Danver,Colorado",
    "London,UK",
    "Kashmir,India",
    "Mumbai,India",
    "Afganistan"
  ];
  List<String> pname = [
    "Waterfall",
    "Lakes",
    "Mountains",
    "Deserts",
    "Beaches",
    "Forests",
    "Campfire",
    "Glacier"
  ];
  int change = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.widgets_outlined,
              color: Colors.black,
            ),
            Text(
              "TOURISM",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w100),
            ),
            Icon(
              Icons.bar_chart,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: const Text(
                "Discover Natural Beauty Of The Earth.",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    fillColor: Colors.white,
                    hintText: 'search "Singapore"',
                    prefixIcon: Icon(
                      Icons.search,
                      // color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.tune_sharp,
                      // color: Colors.black,
                    )),
              ),
            ),
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: navbar.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        change = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: change == index ? Colors.pink : Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          navbar[index],
                          style: TextStyle(
                              color:
                                  change == index ? Colors.white : Colors.grey),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(8, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/destination/image_${index + 1}.jpg"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 15, 0, 0),
                      child: Text(
                        dest[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Icon(Icons.place_outlined),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              place[index],
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              })),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Catagories",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(8, ((index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                              "assets/catagories/pic_${index + 1}.jpg"),
                        ),
                      ),
                      Text(
                        pname[index],
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  );
                })),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        gap: 0,
        tabMargin: EdgeInsets.symmetric(horizontal: 2),
        iconSize: 20,
        textSize: 5,
        activeColor: Colors.pink,
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          GButton(
            icon: Icons.house,
            text: "Home",
          ),
          GButton(
            icon: Icons.search_outlined,
            text: "Search",
          ),
          GButton(
            icon: Icons.notifications_on,
            text: "Alerts",
          ),
          GButton(
            icon: Icons.person_pin,
            text: "Profile",
          ),
        ],
      ),
    );
  }
}
