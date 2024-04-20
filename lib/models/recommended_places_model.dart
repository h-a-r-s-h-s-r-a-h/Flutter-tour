// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  final String description;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
    required this.description,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/places/ablock.png",
    rating: 2,
    location: "A block",
    description: "Administrative offices and services.",
  ),
    RecommendedPlaceModel(
    image: "assets/places/bblock.png",
    rating: 3,
    location: "B block",
    description: "Houses laboratories and classrooms for academic activities.",
  ),
  RecommendedPlaceModel(
    image: "assets/places/girlsh.png",
    rating: 0.1,
    location: "Girls Hostel",
    description: "Residential accommodation for female students.",
  ),
  RecommendedPlaceModel(
    image: "assets/places/boysh.png",
    rating: 5,
    location: "Boys Hostel",
    description: "Residential accommodation for male students.",
  ),
  RecommendedPlaceModel(
    image: "assets/places/play.png",
    rating: 5,
    location: "PlayGround",
    description: "Open space for outdoor activities and recreation.",
  ),
];
