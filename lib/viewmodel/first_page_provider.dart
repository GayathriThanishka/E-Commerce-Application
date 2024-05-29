

import 'package:ecommerceapp/view/Cart_Page.dart';
import 'package:ecommerceapp/view/wished_page.dart';

import 'package:flutter/material.dart';

class CartPageProvider extends ChangeNotifier {
  void cartButtonEvent(BuildContext context)
  {
   Navigator.push(context,MaterialPageRoute(
                builder: (context) {
                  return const CartPage();
                },
              ), );
  }
 void wishedButtonEvent(BuildContext context)
  {
   Navigator.push(context,MaterialPageRoute(
                builder: (context) {
                  return const WishedPage();
                },
              ), );
  }
  }
 
