class User {
  String? id;
  String? name;
  String? email;
  String ? password;
  String? phoneNumber;
  String? image;

  User({this.id, this.name, this.phoneNumber, this.image, this.email, this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json["User Id"];
    name = json["username"];
    phoneNumber = json["Phone Number"];
    password = json["password"];
    image = json["Image Url"];
    email = json["email"];
  }

  Map<String, dynamic>? toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["User Id"] = id;
    data["username"] = name;
    data["Phone Number"] = phoneNumber;
    data["Image Url"] = image;
    data["email"] = email;
    data["password"] = password;
    return data;
  }
}

//Create User
