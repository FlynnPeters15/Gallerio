import 'dart:ui';
import 'package:GallerioV1/pages/discover_page.dart';
import 'package:GallerioV1/pages/explore_page.dart';
import 'package:GallerioV1/pages/offers_page.dart';
import 'package:GallerioV1/pages/other_user_profile.dart';
import 'package:GallerioV1/pages/profile_page.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//Bottom nav bar
  int _selectedIndex = 2;
  void _navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    ExplorePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Discover',
            backgroundColor: Colors.grey[850],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
            backgroundColor: Colors.grey[850],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Profile',
            backgroundColor: Colors.grey[850],
          ),
        ],
      ),
    );
  }
}
