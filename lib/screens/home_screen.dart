import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:suggest/essentials/create_recipe.dart';
import 'package:suggest/my_widgets/alpha_widgets.dart';
import 'package:suggest/screens/discover.dart';
import 'package:suggest/screens/profile_display.dart';

void main() => runApp(const HomeScreen());

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> pages = [
    HomeTab(),
    Discover(),
    CreateRecipe(),
    ProfileDisplayPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages[selectedIndex],
        bottomNavigationBar: GNav(
          gap: 5,
          haptic: true,
          curve: Curves.easeOutExpo,
          activeColor: Colors.red,
          color: Colors.grey.shade800,
          tabBackgroundColor: Colors.transparent,
          onTabChange: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.explore,
              text: "Discover",
            ),
            GButton(
              icon: Icons.add,
              text: " ",
            ),
            GButton(
              icon: Icons.favorite,
              text: "Profile",
            ),
            // GButton(
            //   icon: Icons.person_outline,
            //   text: "Account",
            // ),
          ],
        ),
      ),
    );
  }
}
