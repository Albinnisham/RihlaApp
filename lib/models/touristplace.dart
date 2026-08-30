class TouristPlace {
  final String name;
  final String image;
  final String location;
  final String description;
  final String culture;
  final String bestTime;
  final List<String> activities;

  TouristPlace({
    required this.name,
    required this.image,
    required this.location,
    required this.description,
    required this.culture,
    required this.bestTime,
    required this.activities,
  });

  factory TouristPlace.fromJson(Map<String, dynamic> json) {
    return TouristPlace(
      name: json['name'] as String,
      image: json['image'] as String,
      location: json['location'] as String,
      description: json['description'] as String,
      culture: json['culture'] as String,
      bestTime: json['bestTime'] as String,
      activities: List<String>.from(json['activities'] as List),
    );
  }
}