import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tourism_app/Pages/mobile_place_detail_page.dart';
import 'package:tourism_app/Pages/mobile_places_page.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
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
    "Eiffel Tower",
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
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            "Discover Natural Beauty Of The Earth.",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
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
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: navbar.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  hoverColor: Colors.transparent,
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
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(8, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: MobilePlaceDetailPage(
                                placeimage:
                                    "assets/destination/image_${index + 1}.jpg",
                                placename: dest[index],
                                placeadd: place[index],
                              ),
                              type: PageTransitionType.fade));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/destination/image_${index + 1}.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 15, 0, 0),
                    child: Text(
                      dest[index],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          place[index],
                          style: const TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                  )
                ],
              );
            })),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300),
                  ),
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
                      padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: const MobilePlacesPage(),
                                  type: PageTransitionType.scale));
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            "assets/catagories/pic_${index + 1}.jpg",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22, right: 10),
                      child: Text(
                        pname[index],
                        style: const TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                );
              })),
            ),
          )
        ],
      ),
    );
  }
}
