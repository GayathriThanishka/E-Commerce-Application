import 'package:ecommerceapp/model/item_list.dart';
import 'package:ecommerceapp/view/Cart_Page.dart';
import 'package:ecommerceapp/view/wished_page.dart';

import 'package:flutter/material.dart';

class CartPageProvider extends ChangeNotifier {
  //Move cartpage function
  void cartButtonEvent(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const CartPage();
        },
      ),
    );
  }
//move wishedpage function
  void wishedButtonEvent(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const WishedPage();
        },
      ),
    );
  }
  //cartpage list delete function

  void cartDeleteEvent(TotalItem item) {
    cartlist.remove(item);
    notifyListeners();
  }

  List<TotalItem> vegetableslist = [];
  List<TotalItem> fruitslist = [];
  List<TotalItem> wishedlist = [];
  List<TotalItem> cartlist = [];
  List<TotalItem> nutslist = [];

  
//seperate item from common list

  void seperateItem() {
    fruitslist.clear();
    vegetableslist.clear();
    nutslist.clear();
    for (var item in itemlist) {
      if (item.catogery == "fruits") {
        fruitslist.add(item);
        print(fruitslist);
        notifyListeners();
      } else if (item.catogery == "vegitables") {
        vegetableslist.add(item);
        notifyListeners();
      } else {
        nutslist.add(item);
        notifyListeners();
       
      }
    }

    // for (var item in itemlist.length; i++) {
    //   if (itemlist[i].catogery == "fruits") {
    //     fruitslist.add(itemlist[i]);
    //     print(fruitslist);
    //     notifyListeners();
    //   } else if(itemlist[i].catogery == "vegitables"){

    //     vegetableslist.add(itemlist[i]);
    //       notifyListeners();
    //   }
    //   else{
    //     print("failed to add");
    //   }

    //   }
  }
}
