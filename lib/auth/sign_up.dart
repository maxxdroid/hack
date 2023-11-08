import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:nerds_project/functions/shared_pref.dart';
import 'package:nerds_project/models/user.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
    throw Exception('Failed to create user. Status code: ${response.statusCode}');
  }
}

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.05, bottom: 30, left: width * 0),
                  child: const Text(
                    "Create an Account.",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 15, right: 15, bottom: 10),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.number,
                      validator: (val) {
                        if (_emailController.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 15, right: 15, bottom: 10),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.number,
                      validator: (val) {
                        if (_emailController.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 15, right: 15, bottom: 10),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.number,
                      validator: (val) {
                        if (_emailController.text.isEmpty) {
                          return "Field cannot be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        labelText: "Phone",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 15, right: 15, bottom: 20),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      validator: (val) {
                        if (_passwordController.text.isEmpty) {
                          return "Field cannot be empty";
                        } else if (_passwordController.text.length < 8) {
                          return "Password cannot be less that 8 characters";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(
                          fontSize: 14,
                        ),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 0, right: 0, bottom: 20),
                  height: height * 0.1,
                  width: width * 0.9,
                  child: ElevatedButton(
                      onPressed: () {
                        final FormState? form = _formKey.currentState;
                        if (form!.validate()) {}
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.purple,
                          backgroundColor: Colors.orangeAccent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
