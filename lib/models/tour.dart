class Tour {
  final String tourName;
  final String location;
  final DateTime date;
  final String descriptionText;
  final int guideTourPrice;
  final int byBusPrice;
  final String imageUrl;

  Tour({
    required this.tourName,
    required this.location,
    required this.date,
    required this.descriptionText,
    required this.guideTourPrice,
    required this.byBusPrice,
    required this.imageUrl,
  });
}

List<Tour> tours = [
  Tour(
    tourName: "Sunset at Meteora",
    location: "Meteora, Greece",
    date: DateTime(2024, 11, 12),
    descriptionText:
        "Experience the breathtaking beauty of Meteora at sunset. This guided tour takes you to the monasteries perched atop towering rock formations, offering a unique perspective on the spiritual and natural wonders of Greece. Perfect for photographers and history lovers alike.",
    guideTourPrice: 50,
    byBusPrice: 30,
    imageUrl:
        "https://hellothessaloniki.gr/wp-content/uploads/2023/08/Meteora-Sunaset-03.jpeg",
  ),
  Tour(
    tourName: "Ancient Olympia Tour",
    location: "Olympia, Greece",
    date: DateTime(2024, 10, 25),
    descriptionText:
        "Explore the birthplace of the Olympic Games in this in-depth tour of Ancient Olympia. Walk through the ruins of the ancient stadium, temples, and training grounds while learning about the rich history of this UNESCO World Heritage Site.",
    guideTourPrice: 65,
    byBusPrice: 40,
    imageUrl: "https://cdn.getyourguide.com/img/tour/61fbe09c24043.jpeg/98.jpg",
  ),
  Tour(
    tourName: "Corfu Island Beach Escape",
    location: "Corfu, Greece",
    date: DateTime(2024, 7, 18),
    descriptionText:
        "Escape to the stunning beaches of Corfu on this day tour. Relax on pristine sands, swim in crystal-clear waters, and enjoy the island's lush scenery. A guided option includes a visit to historic landmarks, while the bus tour offers a scenic ride to the best beaches.",
    guideTourPrice: 70,
    byBusPrice: 45,
    imageUrl:
        "https://www.rentacarpotos.gr/blog/wp-content/uploads/2023/06/GetPaidStock.com-648e1230b63f3-1.jpg",
  ),
  Tour(
    tourName: "Santorini Volcano Cruise",
    location: "Santorini, Greece",
    date: DateTime(2024, 8, 15),
    descriptionText:
        "Set sail around the volcanic islands of Santorini on this exciting boat tour. Visit the active volcano, soak in natural hot springs, and enjoy panoramic views of the iconic white-washed buildings clinging to the cliffs of Santorini. A perfect tour for adventurers and nature lovers.",
    guideTourPrice: 90,
    byBusPrice: 60,
    imageUrl:
        "https://cdn.getyourguide.com/img/tour/5c6b3bf3aca11d48.jpeg/146.jpg",
  ),
  Tour(
    tourName: "Delphi Archaeological Site Visit",
    location: "Delphi, Greece",
    date: DateTime(2024, 9, 5),
    descriptionText:
        "Discover the ancient sanctuary of Delphi, once considered the center of the world in Greek mythology. This guided tour will take you through the ruins of the Temple of Apollo and the theater, as well as the museum that houses ancient artifacts.",
    guideTourPrice: 55,
    byBusPrice: 35,
    imageUrl:
        "https://powertraveller.com/wp-content/uploads/2024/07/3_athens-5-days-in-delphi-meteora-thessaloniki-macedonia..jpg",
  ),
];
