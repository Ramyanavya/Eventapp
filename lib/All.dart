import 'package:event_dart/Homescreen.dart';
import 'package:event_dart/Packages.dart';
import 'package:event_dart/Plan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'account/Account.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    Planning(),
    PackageScreen(),
    AccountPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _currentIndex == 0 ? CupertinoIcons.house_fill : CupertinoIcons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _currentIndex == 1 ? CupertinoIcons.calendar_circle_fill : CupertinoIcons.calendar_circle,
            ),
            label: 'Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _currentIndex == 2 ? CupertinoIcons.gift_fill : CupertinoIcons.gift,
            ),
            label: 'Packages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _currentIndex == 3 ? CupertinoIcons.person_solid : CupertinoIcons.person,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
