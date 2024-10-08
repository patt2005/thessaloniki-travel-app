import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/pages/nav_bar_page.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    _onInitState();
  }

  void _onInitState() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        CupertinoPageRoute(
          builder: (context) => const NavBarPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.13,
            width: double.infinity,
          ),
          Image.asset(
            "images/image.png",
            fit: BoxFit.contain,
            width: size.height * 0.2,
            height: size.height * 0.2,
          ),
          const Text(
            "REGENCY\nTHE SALONIKI",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Libre",
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Image.asset(
            "images/intro.png",
            fit: BoxFit.contain,
            width: size.height * 0.4,
            height: size.height * 0.4,
          ),
        ],
      ),
    );
  }
}
