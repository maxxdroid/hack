import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nerds_project/functions/shared_pref.dart';
import 'package:nerds_project/models/user.dart';

class AuthMethods {
  Future<void> createUser(User newUser) async {
    final response = await http.post(
      Uri.parse("https://afe0-196-61-44-226.ngrok-free.app/api/user/create/"),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'name': newUser.name,
        'email': newUser.email,
        'phoneNumber': newUser.phoneNumber,
        'password': newUser.password,
      }),
    );

    if (response.statusCode == 201) {
      // User creation was successful (status code 201 - Created)
      // print('Response body: ${response.body}');
      final responseData = json.decode(response.body);
      final id = responseData['user_id'];
      SharedPrefHelper().saveUserID(id);
    } else {
      // Handle errors when user creation fails
      print('Response body: ${response.body}');
      throw Exception(
          'Failed to create user. Status code: ${response.statusCode}');
    }
  }
}
