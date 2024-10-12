import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/models/journey.dart';
import 'package:thessaloniki_travel_app/pages/journey_details_page.dart';
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
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
                    style: TextStyle(fontSize: 16, fontFamily: "Irish"),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "images/home.jpg",
                    fit: BoxFit.cover,
                    width: size.width,
                    height: size.height * 0.25,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                itemCount: journeys.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      await Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) =>
                              JourneyDetailsPage(journey: journeys[index]),
                        ),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          bottom: 20, right: 15, left: 15),
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black
                                .withOpacity(0.2), // Culoarea umbrei
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
                            Text(
                              journeys[index].title,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 15,
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
                            const SizedBox(height: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: kPriaryColor,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 7.5,
                                    ),
                                    child: Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                          color: kTextColor,
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: Text(
                                      journeys[index].destinationText,
                                      style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 10,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(journeys[index].relatedTags[1]),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(journeys[index].relatedTags[2]),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: kBackgroundColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child:
                                      Text(journeys[index].relatedTags.first),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
