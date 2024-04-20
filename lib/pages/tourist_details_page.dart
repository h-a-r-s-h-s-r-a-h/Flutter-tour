// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:travel_app/widgets/distance.dart';

// class TouristDetailsPage extends StatelessWidget {
//   TouristDetailsPage({
//     Key? key,
//     required this.image,
//     required this.rating,
//     required this.location,
//     required this.description,
//   }) : super(key: key);

//   final String image;
//   final double rating;
//   final String location;
//   final String description;

//   final FlutterTts flutterTts = FlutterTts();

//   Future<void> speakDescription() async {
//     // await flutterTts.speak(description);
//     await flutterTts
//         .setSpeechRate(0.3); // Adjust speed (0.5 is slower, 1.0 is normal)
//     await flutterTts.speak(description);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: SafeArea(
//         child: ListView(
//           padding: const EdgeInsets.all(10),
//           children: [
//             SizedBox(
//               height: size.height * 0.38,
//               width: double.maxFinite,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.vertical(
//                         bottom: Radius.circular(20),
//                       ),
//                       image: DecorationImage(
//                         image: AssetImage(image),
//                         fit: BoxFit.cover,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.4),
//                           spreadRadius: 0,
//                           blurRadius: 20,
//                           offset: const Offset(0, 10),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     top: 10,
//                     left: 0,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.7),
//                         borderRadius: const BorderRadius.horizontal(
//                           right: Radius.circular(15),
//                         ),
//                       ),
//                       child: Row(
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             iconSize: 20,
//                             icon: const Icon(Ionicons.chevron_back),
//                           ),
//                           IconButton(
//                             iconSize: 20,
//                             onPressed: () {},
//                             icon: const Icon(Ionicons.heart_outline),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Location",
//                       style: Theme.of(context).textTheme.titleLarge,
//                     ),
//                     const SizedBox(height: 5),
//                     Text(
//                       location,
//                       style: Theme.of(context).textTheme.bodySmall,
//                     )
//                   ],
//                 ),
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 4),
//                   child: IconButton(
//                     onPressed: () {},
//                     iconSize: 20,
//                     icon: const Icon(Ionicons.chatbubble_ellipses_outline),
//                   ),
//                 ),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       rating.toString(),
//                       style: Theme.of(context).textTheme.bodySmall,
//                     ),
//                     Icon(
//                       Ionicons.star,
//                       color: Colors.yellow[800],
//                       size: 15,
//                     )
//                   ],
//                 )
//               ],
//             ),
//             const SizedBox(height: 15),
//             Text(
//               "Description:",
//               style: Theme.of(context).textTheme.subtitle1!.copyWith(
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               description,
//               style: Theme.of(context).textTheme.bodyText1,
//             ),
//             const SizedBox(height: 15),
//             ElevatedButton(
//               onPressed: speakDescription,
//               child: const Text('Read Description'),
//             ),
//             const SizedBox(height: 20),
//             // Rest of the content remains the same
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'package:travel_app/widgets/distance.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as GoogleMaps; // Add alias
import 'package:latlong2/latlong.dart' as LatLng2; // Add alias

class TouristDetailsPage extends StatelessWidget {
  TouristDetailsPage({
    Key? key,
    required this.image,
    required this.rating,
    required this.location,
    required this.description,
  }) : super(key: key);

  final String image;
  final double rating;
  final String location;
  final String description;

  final FlutterTts flutterTts = FlutterTts();

  Future<void> speakDescription() async {
    await flutterTts.setSpeechRate(0.3);
    await flutterTts.speak(description);
  }

  Future<void> openMaps() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final latitude = 28.450683396786783;
    final longitude = 77.58426733946253;
    final url = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            SizedBox(
              height: size.height * 0.38,
              width: double.maxFinite,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            iconSize: 20,
                            icon: const Icon(Ionicons.chevron_back),
                          ),
                          IconButton(
                            iconSize: 20,
                            onPressed: () {},
                            icon: const Icon(Ionicons.heart_outline),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      location,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: IconButton(
                    onPressed: openMaps,
                    iconSize: 20,
                    icon: const Icon(Ionicons.map_outline),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 20,
                    icon: const Icon(Ionicons.chatbubble_ellipses_outline),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      rating.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Icon(
                      Ionicons.star,
                      color: Colors.yellow[800],
                      size: 15,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              "Description:",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: speakDescription,
              child: const Text('Read Description'),
            ),
            const SizedBox(height: 20),
            Container(
              height: 300,
              child: GoogleMaps.GoogleMap(
                initialCameraPosition: GoogleMaps.CameraPosition(
                  target: GoogleMaps.LatLng(28.450683396786783, 77.58426733946253),
                  zoom: 14,
                ),
                markers: {
                  GoogleMaps.Marker(
                    markerId: GoogleMaps.MarkerId('1'),
                    position: GoogleMaps.LatLng(28.450683396786783, 77.58426733946253),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
