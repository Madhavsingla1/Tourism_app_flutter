// ignore_for_file: prefer_const_constructors

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
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            "Discover Natural Beauty Of The Earth.",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w300),
          ),
          // SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
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
          )
        ],
      ),
      bottomNavigationBar: GNav(
        gap: 10,
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
            icon: Icons.watch_later,
            text: "Recent",
          ),
          GButton(
            icon: Icons.notifications,
            text: "Notifications",
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
