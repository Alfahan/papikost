class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  String photos;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;

  Space(
      {this.city,
      this.country,
      this.id,
      this.imageUrl,
      this.name,
      this.price,
      this.rating,
      this.address,
      this.phone,
      this.mapUrl,
      this.photos,
      this.numberOfKitchens,
      this.numberOfBedrooms,
      this.numberOfCupboards});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    imageUrl = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['mapUrl'];
    numberOfKitchens = json['numberOfKitchens'];
    numberOfBedrooms = json['numberOfBedrooms'];
    numberOfCupboards = json['numberOfCupboards'];
  }
}
