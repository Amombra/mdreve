import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var demoIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: ExpandingBottomBar(
        navBarHeight: 90.0,
        items: [
          ExpandingBottomBarItem(
            icon: Icons.bookmark_border,
            text: "Home",
            selectedColor: Colors.purple,
          ),
          ExpandingBottomBarItem(
            icon: Icons.favorite_border,
            text: "Likes",
            selectedColor: Colors.pink,
          ),
          ExpandingBottomBarItem(
            icon: Icons.search,
            text: "Search",
            selectedColor: Colors.amber,
          ),
          ExpandingBottomBarItem(
            icon: Icons.star_border,
            text: "Profile",
            selectedColor: Colors.teal,
          ),
        ],
        selectedIndex: demoIndex,
        onIndexChanged: (demo) {
          setState(() {
            demoIndex = demo;
          });
        },
      ),
    );
  }
}