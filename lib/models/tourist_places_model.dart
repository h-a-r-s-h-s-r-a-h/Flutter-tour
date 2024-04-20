// ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Study", image: "assets/icons/studying.png"),
  TouristPlacesModel(name: "Food", image: "assets/icons/diet.png"),
  TouristPlacesModel(name: "Garden", image: "assets/icons/forest.png"),
  TouristPlacesModel(name: "Indoor Games", image: "assets/icons/city.png"),
  TouristPlacesModel(name: "Outdoor Games", image: "assets/icons/desert.png"),
];
