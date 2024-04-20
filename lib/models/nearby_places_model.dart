// ignore_for_file: public_member_api_docs, sort_constructors_first
class NearbyPlaceModel {
  final String image;
  final double rating;
  final String location;
  final String description;
  NearbyPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
    required this.description,
  });
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
    image: "assets/places/poll.png",
    rating: 5,
    location: "Swimming poll",
    description: "A refreshing spot for leisure and exercise.",
  ),
  NearbyPlaceModel(
    image: "assets/places/library.png",
    rating: 5,
    location: "Library",
    description: "A quiet haven for reading and studying.",
  ),
  NearbyPlaceModel(
    image: "assets/places/lab.png",
    rating: 5,
    location: "Labs",
    description: "Spaces for hands-on experimentation and learning.",
  ),
  NearbyPlaceModel(
    image: "assets/places/gym.png",
    rating: 1,
    location: "Gym",
    description: "Facilities for physical fitness and workouts.",
  ),
  NearbyPlaceModel(
    image: "assets/places/badminton.png",
    rating: 2,
    location: "Badminton Court",
    description: "Area for playing badminton, a popular indoor sport.",
  ),
  NearbyPlaceModel(
    image: "assets/places/ablock.png",
    rating: 2,
    location: "A block",
    description: "Administrative offices and services.",
  ),
  NearbyPlaceModel(
    image: "assets/places/bblock.png",
    rating: 3,
    location: "B block",
    description: "Houses laboratories and classrooms for academic activities.",
  ),
  NearbyPlaceModel(
    image: "assets/places/girlsh.png",
    rating: 0.1,
    location: "Girls Hostel",
    description: "Residential accommodation for female students.",
  ),
  NearbyPlaceModel(
    image: "assets/places/boysh.png",
    rating: 5,
    location: "Boys Hostel",
    description: "Residential accommodation for male students.",
  ),
  NearbyPlaceModel(
    image: "assets/places/play.png",
    rating: 5,
    location: "PlayGround",
    description: "Open space for outdoor activities and recreation.",
  ),
];
