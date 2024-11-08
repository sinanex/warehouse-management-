import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warehouse_manag/screen/add.dart';
import 'package:warehouse_manag/screen/dashbord.dart';
import 'package:warehouse_manag/screen/homepage.dart';
import 'package:warehouse_manag/screen/profile.dart';

class Navigationpage extends StatefulWidget {
  const Navigationpage({super.key});

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

int currentState = 0;
var pages = [
  Homepage(),
  AddstockPage(),
Dashbord(),
  ProfilePage(),
];

class _NavigationpageState extends State<Navigationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentState],
      bottomNavigationBar: GNav(
          selectedIndex: currentState,
          onTabChange: (value) {
            setState(() {
              currentState = value;
            });
          },
          color: Colors.white,
          backgroundColor: Colors.black,
          activeColor: Colors.white,
          gap: 8,
          tabs: [
            GButton(
              icon: (Iconsax.home),
              text: 'home',
            ),
            GButton(
              icon: (Iconsax.add_square),
              text: 'add',
            ),
            GButton(
              icon: (Iconsax.activity),
              text: 'dashboard',
            ),
            GButton(
              icon: (Iconsax.user),
              text: 'profile',
            ),
          ]),
    );
  }
}
