import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tourism_app/utils/gloabal_used_widgets.dart';

class MobileLayoutPage extends StatefulWidget {
  const MobileLayoutPage({Key? key}) : super(key: key);

  @override
  State<MobileLayoutPage> createState() => _MobileLayoutPageState();
}

class _MobileLayoutPageState extends State<MobileLayoutPage> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  final bottombar = ["Home", "Search", "Alerts", "Profile"];
  final bottombaricon = [
    Icons.house,
    Icons.search_outlined,
    Icons.notifications_on,
    Icons.person_pin
  ];
  void navigatepage(value) {
    _pageController.jumpToPage(value);
  }

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
              "TOURLY",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Dancing Script',
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.bar_chart,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: PageNavigation,
      ),
      bottomNavigationBar: GNav(
        gap: 0,
        color: Colors.black,
        tabMargin: const EdgeInsets.symmetric(horizontal: 2),
        iconSize: 20,
        textSize: 5,
        activeColor: Colors.pink,
        tabs: List.generate(
          bottombar.length,
          (index) {
            return GButton(
              icon: bottombaricon[index],
              text: bottombar[index],
            );
          },
        ),
        onTabChange: (value) {
          navigatepage(value);
        },
      ),
    );
  }
}
