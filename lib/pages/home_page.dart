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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20), // Spațiu deasupra textului

              const Text(
                "THE SALONIKI",
                style: TextStyle(fontSize: 24, fontFamily: "Libre"),
              ),
              const SizedBox(height: 20),

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
                width: size.width,
                height: size.height * 0.25,
              ),
              const SizedBox(height: 20),

              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xFFC2D3F1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Culoarea umbrei
                      spreadRadius: 2, // Raza de extindere a umbrei
                      blurRadius: 10, // Raza de estompare a umbrei
                      offset: const Offset(0, 4), // Poziția umbrei (x, y)
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Cultural Pathway:Exploring\ntimeless trails",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "images/globe-01.png",
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Destination",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: kPriaryColor,
                                  borderRadius: BorderRadius.circular(12)),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 7.5,
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    color: kTextColor,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Text(
                                '"A fortress walk with stunning city and sea views, framed by ancient stone walls."',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
