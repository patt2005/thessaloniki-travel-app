import 'package:google_maps_flutter/google_maps_flutter.dart';

class Journey {
  final String title;
  final String destinationText;
  List<String> relatedTags;
  final String description;
  final LatLng latLng;
  final String imageUrl;

  Journey({
    required this.title,
    required this.destinationText,
    required this.relatedTags,
    required this.description,
    required this.latLng,
    required this.imageUrl,
  });
}

List<Journey> journeys = [
  Journey(
    imageUrl:
        "https://culturetreasures.com/wp-content/uploads/2023/10/Ottoman-Pazar-Hamam.jpg",
    title: "Cultural Pathway: Exploring\nTimeless Trails",
    destinationText:
        '"A fortress walk with stunning city and sea views, framed by ancient stone walls."',
    relatedTags: ["scenic", "byzantine", "timeless"],
    description:
        "Explore Thessaloniki’s rich Byzantine heritage, taking in the city’s old walls and the view from the Heptapyrgion Fortress. A scenic route that showcases both the city’s history and beauty.",
    latLng: const LatLng(40.640064, 22.944419),
  ),
  Journey(
    imageUrl:
        "https://www.greeka.com/seedo/photos/744/thessaloniki-white-tower-top-1-1280.jpg",
    title: "White Tower of Thessaloniki",
    destinationText:
        '"An iconic monument with panoramic views of the sea and city."',
    relatedTags: ["monument", "history", "landmark"],
    description:
        "The White Tower is Thessaloniki's most iconic landmark. It offers panoramic views of the Aegean Sea and the city's coastline. It's a perfect place to start your journey through the city's rich history.",
    latLng: const LatLng(40.626374, 22.948884),
  ),
  Journey(
    imageUrl:
        "https://cdn.prod.website-files.com/56325f56cc2b152e06e3a1cb/58ff0fce4fb30d1119e66503_aristotelos2.jpg",
    title: "Aristotelous Square",
    destinationText: '"A vibrant square at the heart of Thessaloniki."',
    relatedTags: ["shopping", "dining", "landmark"],
    description:
        "Aristotelous Square is Thessaloniki’s largest square and a popular meeting place. Surrounded by beautiful neoclassical buildings, it's perfect for shopping, dining, and people-watching.",
    latLng: const LatLng(40.633084, 22.939577),
  ),
  Journey(
    imageUrl:
        "https://static.wixstatic.com/media/37d0c7_d399c063676042afa33e4251f9cbe903~mv2.jpg/v1/fill/w_2500,h_1655,al_c/37d0c7_d399c063676042afa33e4251f9cbe903~mv2.jpg",
    title: "Rotunda of Galerius",
    destinationText:
        '"A UNESCO World Heritage site, originally a mausoleum, later a Christian church."',
    relatedTags: ["UNESCO", "ancient", "historical"],
    description:
        "The Rotunda is one of Thessaloniki’s oldest and most impressive monuments. Built in the 4th century, it has served as a mausoleum, a church, and a mosque. It’s a UNESCO World Heritage site.",
    latLng: const LatLng(40.634272, 22.952172),
  ),
  Journey(
    imageUrl:
        "https://www.greeka.com/seedo/photos/736/thessaloniki-archaeological-museum-top-1-1280.jpg",
    title: "The Archaeological Museum of Thessaloniki",
    destinationText:
        '"An impressive collection of Macedonia’s historical treasures."',
    relatedTags: ["museum", "archaeology", "history"],
    description:
        "This museum houses one of the richest collections of artifacts from Macedonia, including impressive finds from the ancient city of Thessaloniki itself.",
    latLng: const LatLng(40.626698, 22.948767),
  ),
  Journey(
    imageUrl: "https://i.ytimg.com/vi/26Szv6gt-wY/maxresdefault.jpg",
    title: "Ano Poli (Upper Town)",
    destinationText:
        '"A charming historical neighborhood with traditional architecture and winding streets."',
    relatedTags: ["views", "traditional", "historic"],
    description:
        "The Upper Town (Ano Poli) is a well-preserved district with traditional houses, narrow cobbled streets, and impressive city views. It offers a glimpse of old Thessaloniki with its Ottoman and Byzantine influences.",
    latLng: const LatLng(40.646763, 22.951409),
  ),
  Journey(
    imageUrl:
        "https://www.greeka.com/seedo/photos/729/thessaloniki-church-of-agios-dimitrios-top-1-1280.jpg",
    title: "Church of Saint Demetrios",
    destinationText:
        '"A pilgrimage site dedicated to Thessaloniki’s patron saint."',
    relatedTags: ["religion", "history", "architecture"],
    description:
        "This UNESCO World Heritage Site is a significant monument of Byzantine architecture and holds the relics of the city’s patron saint, Saint Demetrios.",
    latLng: const LatLng(40.640433, 22.944804),
  ),
  Journey(
    imageUrl:
        "https://industryeurope.com/downloads/8327/download/port%20of%20Thessaloniki.png?cb=3f6d1a5911b5282023c2f9e1907271bc&w=1032",
    title: "The Port of Thessaloniki",
    destinationText:
        '"A lively area with stunning sunset views and vibrant nightlife."',
    relatedTags: ["seaside", "nightlife", "scenic"],
    description:
        "The port is one of the best places to enjoy Thessaloniki’s vibrant atmosphere. It’s a great place for evening walks and offers amazing views, especially during sunset.",
    latLng: const LatLng(40.633804, 22.926428),
  ),
  Journey(
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/c1/3e/9b/ladadika-district.jpg?w=1200&h=-1&s=1",
    title: "Ladadika District",
    destinationText:
        '"A colorful district known for its lively atmosphere, restaurants, and bars."',
    relatedTags: ["nightlife", "dining", "historic"],
    description:
        "Ladadika is a historical district with colorful neoclassical buildings. Today, it’s one of the best spots for food, drinks, and entertainment in Thessaloniki.",
    latLng: const LatLng(40.634824, 22.939585),
  ),
];
