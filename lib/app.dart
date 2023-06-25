class Application {
  late String Name;
  late double rating; 
  late String description;
  late String imagesrc;

  Application({required this.Name, required this.rating, required this.description, required this.imagesrc});
  void setName(String Name) {
    this.Name = Name;
  }
  void setRating(double rating) {
    this.rating = rating;
  }
  void setDescription(String description) {
    this.description = description;
  }
  void setImageSrc(String imagesrc) {
    this.imagesrc = imagesrc;
  }

  double getRating() {
    return this.rating;
  }
  String getName() {
    return this.Name;
  }
  String getDescription() {
    return this.description;
  }
  String getImageSrc() {
    return this.imagesrc;
  }
}
