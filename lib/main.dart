import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thessaloniki_travel_app/pages/intro_page.dart';
import 'package:thessaloniki_travel_app/utils/app_state_manager.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      child: const MyApp(),
      create: (context) => AppStateManager(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      home: const IntroPage(),
    );
  }
}
