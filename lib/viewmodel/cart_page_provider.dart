import 'package:flutter/material.dart';

class CartPageProvider extends ChangeNotifier {
  void cartButtonEvent()
  {
    return Navigator.push(context,MaterialPageRoute(
                builder: (context) {
                  return CartPageProvider();
                };
              ), );
  }
  
}