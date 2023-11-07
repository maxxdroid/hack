class User {
  String? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? image;

  User({this.id, this.name, this.phoneNumber, this.image, this.email});

  User.fromJson(Map<String, dynamic> json) {
    id = json["User Id"];
    name = json["Name"];
    phoneNumber = json["Phone Number"];
    image = json["Image Url"];
    email = json["Email"];
  }

  Map<String, dynamic>? toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["User Id"] = id;
    data["Name"] = name;
    data["Phone Number"] = phoneNumber;
    data["Image Url"] = image;
    data["Email"] = email;
    return data;
  }
}
