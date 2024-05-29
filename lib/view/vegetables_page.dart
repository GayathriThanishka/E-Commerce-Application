import 'package:ecommerceapp/model/item_list.dart';
import 'package:ecommerceapp/model/navbar_list.dart';

import 'package:ecommerceapp/viewmodel/first_page_provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VegetablesPage extends StatefulWidget {
  const VegetablesPage({super.key});

  @override
  State<VegetablesPage> createState() => _VegetablesPageState();
}

class _VegetablesPageState extends State<VegetablesPage> {
  @override
  Widget build(BuildContext context) {
    final snap=context.watch<CartPageProvider>();
    return Scaffold(
      drawer: NavbarList(),
      appBar: AppBar(
     
        
          title: Text("Vegetables",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black),),centerTitle: true,
          actions: [
            IconButton(
                onPressed: () { snap.wishedButtonEvent(context);}, icon: Icon(Icons.favorite_outline_outlined),color: Colors.black),
            IconButton(
                onPressed: (){
                snap.cartButtonEvent(context);
                },
                icon: Icon(Icons.shopping_cart_checkout_outlined),color: Colors.black,)
          ],
          backgroundColor:Color(0XFF47BA1C),
        ),
      
      body: ListView.builder(
        itemCount: itemlist.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(20),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          itemlist[index].image,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemlist[index].name,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        itemlist[index].price,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          wishlist.add(itemlist[index]);
                        },
                        icon: Icon(Icons.favorite_outline_outlined)),
                    IconButton(
                        onPressed: () {
                          cartlist.add(itemlist[index]);

                        },
                        icon: Icon(Icons.shopping_cart_checkout_outlined)),
                  ])
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
