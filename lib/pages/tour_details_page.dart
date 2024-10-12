import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/models/tour.dart';
import 'package:thessaloniki_travel_app/pages/booking_page.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class TourDetailsPage extends StatelessWidget {
  final Tour tour;

  const TourDetailsPage({
    super.key,
    required this.tour,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor, // Light background color
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        backgroundColor: kBackgroundColor,
        title: Text(
          'Tour Details',
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tour Image
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  tour.imageUrl.isNotEmpty
                      ? tour.imageUrl
                      : 'https://via.placeholder.com/300',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 15),
              // Tour Name
              Text(
                tour.tourName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              // Location and Date
              Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Colors.teal,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    tour.location,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.date_range,
                    color: Colors.teal,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '${tour.date.day}/${tour.date.month}/${tour.date.year}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // Heritage/Description Section
              const Text(
                '🏛️ Heritage',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                tour.descriptionText,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 15),
              // Why Visit Section
              const Text(
                '🌟 Why Visit',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Explore the lively atmosphere, ancient ruins, vibrant streets, and local cuisine.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 15),
              // Prices Section
              const Text(
                '💵 Prices',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '• Guide Tour: \$${tour.guideTourPrice}\n• By Bus: \$${tour.byBusPrice}\n• Walking: Free access to major landmarks',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: kPriaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingPage(),
                    ),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.book,
                      size: 28,
                      color: Colors.black,
                    ), // Book
                    Text(
                      'Book Now',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
