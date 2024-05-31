import 'package:ecommerceapp/view/home_page.dart';
import 'package:ecommerceapp/view/splash_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginProvider extends ChangeNotifier {
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
      {required GlobalKey<FormState> appkey, required BuildContext context}) {
    if (appkey.currentState!.validate()) {
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
       );
    }
  }
}
