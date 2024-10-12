import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/components/tour_card.dart';
import 'package:thessaloniki_travel_app/models/tour.dart';
import 'package:thessaloniki_travel_app/pages/tour_details_page.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class TourListPage extends StatelessWidget {
  const TourListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Available tours",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  fontFamily: "Irish",
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tours.length,
                itemBuilder: (context, index) {
                  final tour = tours[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: GestureDetector(
                      onTap: () async {
                        await Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => TourDetailsPage(tour: tour),
                          ),
                        );
                      },
                      child: TourCard(
                          tour: tour), // Display each tour card vertically
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
