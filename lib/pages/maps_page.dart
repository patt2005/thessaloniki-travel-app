import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: const Center(
        child: Text("maps"),
      ),
    );
  }
}
