import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thessaloniki_travel_app/components/trip_card.dart';
import 'package:thessaloniki_travel_app/models/trip.dart';
import 'package:thessaloniki_travel_app/pages/trip_details_page.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class TripListPage extends StatefulWidget {
  const TripListPage({super.key});

  @override
  State<TripListPage> createState() => _TripListPageState();
}

class _TripListPageState extends State<TripListPage> {
  List<Trip> _filteredTrips = List.from(trips);
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _searchQuery = value.toLowerCase();
                    _filteredTrips = trips
                        .where((trip) =>
                            trip.name.toLowerCase().contains(_searchQuery))
                        .toList();
                  });
                },
                decoration: InputDecoration(
                  hintText: "Search trips...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: _filteredTrips.length,
                itemBuilder: (context, index) {
                  final trip = _filteredTrips[index];
                  return InkWell(
                    child: TripCard(trip: trip),
                    onTap: () async {
                      await Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => TripDetailsPage(trip: trip),
                        ),
                      );
                    },
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
