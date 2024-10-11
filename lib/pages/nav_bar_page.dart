import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/pages/home_page.dart';
import 'package:thessaloniki_travel_app/pages/maps_page.dart';
import 'package:thessaloniki_travel_app/pages/settings_page.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: kBackgroundColor,
      tabBar: CupertinoTabBar(
        activeColor: kPriaryColor,
        inactiveColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return const HomePage();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return const MapsPage();
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return const SettingsPage();
              },
            );
          default:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return const HomePage();
              },
            );
        }
      },
    );
  }
}
