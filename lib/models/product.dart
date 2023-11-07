class Product {
  String? iD;
  String? name;
  String? price;
  String? image;
  String? description;
  String? type;

  Product(
      {this.iD,
      this.name,
      this.price,
      this.description,
      this.image,
      this.type});

  Product.fromJson(Map<String, dynamic> json) {
    iD = json["Product Id"];
    name = json["Name"];
    price = json["price"];
    description = json["description"];
    image = json["image"];
    type = json["type"];
  }

  Map<String, dynamic>? toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["Product Id"] = iD;
    data["Name"] = name;
    data["price"] = price;
    data["description"] = description;
    data["image"] = image;
    data["type"] = type;
    return data;
  }
}
