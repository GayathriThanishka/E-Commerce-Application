import 'package:ecommerceapp/view/home_page.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final client = http.Client();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? emailValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter valid email id";
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return "Please enter valid password";
    }
    return null;
  }

  void submitButtonClickEvent(
      {required GlobalKey<FormState> appkey,
      required BuildContext context}) async {
    if (appkey.currentState!.validate()) {
      loginApi().then((value) {
        if (value == true) {
          return Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Invalid UserName or Password")));
        }
      });
    }
  }

  Future<bool> loginApi() async {
    final response = await client.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: <String, dynamic>{
          "username": emailIdController.text.trim(),
          "password": passwordController.text.trim(),
        });
    // final result = jsonDecode(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
