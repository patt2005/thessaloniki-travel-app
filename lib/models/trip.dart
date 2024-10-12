import 'package:google_maps_flutter/google_maps_flutter.dart';

class Trip {
  final String name;
  final String imageUrl;
  final String tripText;
  final LatLng latLng; // Adding LatLng for location coordinates

  Trip({
    required this.name,
    required this.imageUrl,
    required this.tripText,
    required this.latLng,
  });
}

List<Trip> trips = [
  Trip(
    name: "Thessaloniki's Historic Walk",
    imageUrl:
        "https://media-cdn.tripadvisor.com/media/attractions-splice-spp-674x446/0a/86/19/f6.jpg",
    tripText:
        "Thessaloniki's Historic Walk takes you on a fascinating journey through centuries of history. Start at the White Tower, one of the city’s most iconic landmarks, and wander through the ancient streets where past empires have left their mark. Visit the Rotunda, an imposing Roman structure that has served as a mausoleum, church, and mosque over the centuries. Continue to the Arch of Galerius, an awe-inspiring remnant of the Roman emperor's rule. As you walk, you'll encounter the remnants of the Byzantine walls that once protected this great city, offering panoramic views of Thessaloniki and the Aegean Sea. This walk is more than just sightseeing; it’s a dive into the deep and complex history of a city that has stood at the crossroads of civilizations for over 2,000 years.",
    latLng: const LatLng(40.6401, 22.9444),
  ),
  Trip(
    name: "Beach Escape at Nea Paralia",
    imageUrl:
        "https://www.thessalonikitourism.gr/images/2019/01/31/neaparalia1.png",
    tripText:
        "Nea Paralia offers the perfect beach escape right in the heart of Thessaloniki. This long stretch of seaside promenade is ideal for a peaceful walk or bike ride, with plenty of benches to sit and admire the stunning views of the Thermaic Gulf. Along the way, you’ll find modern art installations, beautifully landscaped gardens, and even outdoor gyms for fitness enthusiasts. Stop at one of the many cafes along the promenade to sip a coffee while taking in the fresh sea breeze. Whether you prefer relaxing on the grass, watching the sunset, or people-watching from a trendy cafe, Nea Paralia is the go-to spot for a mix of serenity and local life. The tranquil atmosphere combined with the gentle sound of the waves makes it the perfect urban retreat.",
    latLng: const LatLng(40.6226, 22.9484),
  ),
  Trip(
    name: "Mount Olympus Adventure",
    imageUrl: "https://cdn.getyourguide.com/img/tour/5b8d04de3a465.jpeg/97.jpg",
    tripText:
        "Embark on a thrilling adventure to Mount Olympus, the highest mountain in Greece and home to the gods of Greek mythology. This journey is not just for experienced hikers; there are trails suitable for all levels of fitness, making it accessible to everyone. As you ascend, you’ll encounter diverse landscapes, from lush forests to alpine meadows. The mountain’s majestic peaks offer breathtaking views over the surrounding valleys and the Aegean Sea. Along the way, you can visit small, picturesque villages, learn about the myths and legends that surround this sacred mountain, and perhaps even stop for a meal at a traditional Greek taverna. Reaching the summit, you’ll feel a sense of accomplishment and connection to ancient Greece, where Mount Olympus has stood as a symbol of power and mystery for millennia.",
    latLng: const LatLng(40.0854, 22.3586),
  ),
  Trip(
    name: "Thessaloniki Food Tour",
    imageUrl:
        "https://travelphotodiscovery.com/wp-content/uploads/2014/12/Thessaloniki-27.jpg",
    tripText:
        "Immerse yourself in the rich culinary traditions of Thessaloniki with a food tour that will satisfy your taste buds and deepen your appreciation for Greek cuisine. Start your tour at Modiano Market, a bustling hub where locals shop for fresh produce, fish, and spices. Sample famous street foods like koulouri (a sesame-crusted bread ring) and bougatsa (a delicious custard-filled pastry). Visit local tavernas to try classic dishes such as moussaka, souvlaki, and fresh seafood straight from the Aegean. Along the way, you’ll learn about the city's multicultural history and how it has influenced its diverse food scene. End the tour with a sweet treat of loukoumades (Greek doughnuts) drizzled with honey and sprinkled with cinnamon, leaving you with a deeper appreciation for Thessaloniki’s vibrant food culture.",
    latLng: const LatLng(40.6401, 22.9444),
  ),
  Trip(
    name: "Monasteries of Meteora",
    imageUrl:
        "https://d2i7eq829tbbje.cloudfront.net/webp/medium/Meteora_3_P_3579_d6dbbecc-e5a7-4205-9224-a0463725b8bf",
    tripText:
        "The Monasteries of Meteora are one of Greece’s most awe-inspiring sights. Perched high atop towering rock formations, these monasteries are a testament to the faith and perseverance of the monks who built them centuries ago. This trip will take you through the lush valleys and up into the cliffs where the monasteries stand. You’ll explore several of the monasteries, each offering unique insights into the monastic life and the history of the region. The view from the top is simply breathtaking, as the monasteries seem to float between heaven and earth. Along the way, you’ll have the chance to learn about the geology that formed these incredible rock formations and the spiritual significance they hold. A trip to Meteora is both a spiritual journey and a visual feast, offering a peaceful escape from the modern world.",
    latLng: const LatLng(39.7168, 21.6312),
  ),
  Trip(
    name: "Sunset Cruise in Thermaic Gulf",
    imageUrl:
        "https://cdn.tripspoint.com/uploads/photos/6254/thessaloniki-sunset-cruise_K0hIm.jpeg",
    tripText:
        "Experience the magic of Thessaloniki from a new perspective with a sunset cruise on the Thermaic Gulf. As the sun sets, casting a golden glow over the water, you'll sail along the coastline, taking in the city's stunning skyline from the sea. This romantic cruise offers a perfect blend of relaxation and sightseeing, with soft music playing in the background as you sip on a refreshing drink. Watch the lights of the city twinkle to life as the sun dips below the horizon, and enjoy the cool breeze as your boat glides over the calm waters. Whether you're celebrating a special occasion or simply want to unwind after a day of exploring the city, this sunset cruise offers an unforgettable way to experience the beauty of Thessaloniki.",
    latLng: const LatLng(40.6401, 22.9444),
  ),
  Trip(
    name: "Byzantine Walls Exploration",
    imageUrl:
        "https://thessaloniki.travel/wp-content/uploads/2021/08/1e8d6dc02986e7e13576b16a6f372759_XL.jpg",
    tripText:
        "Walk along Thessaloniki's ancient Byzantine Walls and take in panoramic views of the city. These walls were built to protect the city from invaders during the Byzantine period, standing tall as a reminder of Thessaloniki’s strategic importance. As you stroll along, you’ll witness how the walls merge with the city’s modern landscape, creating a harmonious blend of past and present. The walls stretch across different districts, offering hidden corners where history buffs and photographers can capture the essence of centuries-old architecture. Whether you’re here for the views, the history, or simply a peaceful walk, the Byzantine Walls promise a journey back in time, where every brick holds a story of defense, resilience, and heritage. Make sure to visit during sunset for breathtaking views of the city and the sea, with the golden light reflecting off the ancient stones.",
    latLng: const LatLng(40.6538, 22.9524),
  ),
  Trip(
    name: "Pella: Alexander the Great's Birthplace",
    imageUrl:
        "https://cdn.britannica.com/82/140682-050-C91FC700/floor-ruins-Pella-Greece.jpg",
    tripText:
        "Discover the ancient city of Pella, the birthplace of Alexander the Great, one of history’s greatest conquerors. Pella was the capital of ancient Macedonia and a center of culture and learning during its time. The archaeological site of Pella offers visitors a rare glimpse into the grandeur of a city that once shaped the future of empires. As you walk through the ruins, you’ll find intricate mosaics that decorated the homes of the Macedonian elite, and you’ll feel the presence of a place that was once bustling with political and cultural activities. The on-site museum houses a collection of artifacts ranging from sculptures, pottery, and tools, each telling a piece of the city’s story. For history enthusiasts, a visit to Pella is a step back into the world of ancient Greece, where you can explore the streets walked by Alexander himself and immerse yourself in the legacy of Macedonia’s golden age.",
    latLng: const LatLng(40.7541, 22.5247),
  ),
  Trip(
    name: "Hiking in Seich Sou Forest",
    imageUrl:
        "https://www.thessalonikitourism.gr/images/2019/04/13/seihsou_forest1.png.png",
    tripText:
        "Escape the hustle and bustle of Thessaloniki with a peaceful hike in Seich Sou Forest, a green oasis just a short drive from the city center. Known as the 'lungs of Thessaloniki,' Seich Sou Forest offers a network of hiking trails that wind through lush pine forests, providing the perfect backdrop for a day of outdoor adventure. The forest is home to a variety of flora and fauna, making it a great destination for nature lovers and wildlife enthusiasts. As you hike, you'll encounter stunning viewpoints offering panoramic vistas of the city, the Thermaic Gulf, and beyond. Whether you’re an experienced hiker or just looking for a casual walk in nature, Seich Sou Forest has trails for all skill levels. Pack a picnic and enjoy a relaxing day in one of Thessaloniki’s most tranquil natural settings. It’s a perfect getaway to recharge and reconnect with nature, all within close proximity to the city.",
    latLng: const LatLng(40.6400, 22.9630),
  ),
  Trip(
    name: "Ladadika District Nightlife",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/c1/3e/9b/ladadika-district.jpg?w=1200&h=-1&s=1",
    tripText:
        "Explore Thessaloniki's vibrant nightlife in the historic Ladadika District, a place where history and entertainment merge seamlessly. Once a bustling trade district during the Ottoman era, Ladadika has been transformed into one of Thessaloniki's liveliest areas, brimming with bars, taverns, and nightclubs. The district’s narrow cobblestone streets and colorful neoclassical buildings create an enchanting atmosphere that comes alive after dark. Known for its eclectic mix of live music venues, Ladadika caters to all tastes, from traditional Greek music to international beats. As you wander from venue to venue, you’ll discover hidden courtyards where locals gather to enjoy good food, drinks, and company. Whether you’re looking to dance the night away or enjoy a quiet drink at a rooftop bar overlooking the city lights, Ladadika offers something for everyone. It's a must-visit for anyone wanting to experience Thessaloniki's rich cultural and social scene.",
    latLng: const LatLng(40.6352, 22.9391),
  ),
];
