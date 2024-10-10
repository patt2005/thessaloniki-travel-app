import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20), // Spațiu deasupra textului

         
          const Text(
            "THE SALONIKI",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
              height: 20), 

          
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Explore Today’s Gem",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20), 

        
          Image.asset(
            "images/imagee.png",
            fit: BoxFit.contain,
            width: 360,
            height: 230,
          ),
          const SizedBox(height: 20),

          
          Container(
            width: 361,
            height: 266,
            decoration: BoxDecoration(
              color: const Color(0xFFC2D3F1), 
              borderRadius:
                  BorderRadius.circular(10), 
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Culoarea umbrei
                  spreadRadius: 2, // Raza de extindere a umbrei
                  blurRadius: 10, // Raza de estompare a umbrei
                  offset: const Offset(0, 4), // Poziția umbrei (x, y)
                ),
              ],
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(
                    8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "images/globe-01.png",
                    ),
                    const SizedBox(width: 8), t
                    const Text(
                      "Destination", 
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
