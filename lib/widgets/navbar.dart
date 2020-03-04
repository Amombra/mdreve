import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:flutter/material.dart';
import 'feed.dart';

class Nav extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return NavState();
  }
}

class NavState extends State<Nav> {
  int _pageindex = 0;
  void onItemTapped(int index) {
    setState(() {
      _pageindex = index;
    });
  }

  final _pageContent = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: BubbleBottomBar(
          backgroundColor: Colors.transparent,
          opacity: 1,
          elevation: 0,
          currentIndex: _pageindex,
          onTap: onItemTapped,
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(OMIcons.home, color: Colors.black),
                activeIcon: Icon(OMIcons.home, color: Colors.white),
                title: Text(
                  "Accueil",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            BubbleBottomBarItem(
                backgroundColor: Colors.lightBlueAccent,
                icon: Icon(OMIcons.search, color: Colors.black),
                activeIcon: Icon(OMIcons.search, color: Colors.white),
                title: Text(
                  "Recherche",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            BubbleBottomBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(OMIcons.favoriteBorder, color: Colors.black),
                activeIcon: Icon(OMIcons.favoriteBorder, color: Colors.white),
                title: Text(
                  "Maisons",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                BubbleBottomBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(OMIcons.moneyOff, color: Colors.black),
                activeIcon: Icon(OMIcons.moneyOff, color: Colors.white),
                title: Text(
                  "Achat",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
                BubbleBottomBarItem(
                backgroundColor: Colors.redAccent,
                icon: Icon(OMIcons.money, color: Colors.black),
                activeIcon: Icon(OMIcons.money, color: Colors.white),
                title: Text(
                  "Vendre",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
      body: _pageContent.elementAt(_pageindex),
    );
  }
}
