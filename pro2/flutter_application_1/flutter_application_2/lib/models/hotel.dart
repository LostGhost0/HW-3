class Hotel {
  String? city;
  String? hotelImage;
  int? price;
  String? adresses;
  String? description;
  String? name;

  Hotel(
      {this.city,
      this.hotelImage,
      this.price,
      this.adresses,
      this.description,
      this.name});

  Hotel.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    name = json['name'];
    hotelImage = json['hotel_image'];
    price = json['price'];
    adresses = json["adresses"];
    description = json["description"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['name'] = name;
    data['ihotel_image'] = hotelImage;
    data['price'] = price;
    data['adresses'] = adresses;
    data['description'] = description;

    return data;
  }
}
