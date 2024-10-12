import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:thessaloniki_travel_app/models/trip.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:thessaloniki_travel_app/utils/utils.dart';

class TripDetailsPage extends StatelessWidget {
  final Trip trip;

  const TripDetailsPage({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.share, color: Colors.white),
            onPressed: () async {
              await Share.share(
                  "${trip.name} / Lat: ${trip.latLng.latitude}° Long: ${trip.latLng.longitude}°");
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Hero(
                  tag: trip.name,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.network(
                      trip.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trip.name,
                        style: const TextStyle(
                          fontFamily: "Irish",
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Text(
                            trip.tripText,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: kPriaryColor,
              child: const Icon(Icons.map, color: Colors.white),
              onPressed: () {
                _showMapModal(context, trip.name);
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showMapModal(BuildContext context, String tripName) {
    final size = MediaQuery.of(context).size;

    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: CupertinoColors.systemGrey6,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: size.width * 0.4),
                child: Container(
                  height: 5,
                  width: 50,
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey2,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: size.height * 0.4,
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: GoogleMap(
                    myLocationButtonEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: trip.latLng,
                      zoom: 12,
                    ),
                    markers: {
                      Marker(
                        markerId: const MarkerId('trip-location'),
                        position: trip.latLng,
                        infoWindow: InfoWindow(title: tripName),
                      ),
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
