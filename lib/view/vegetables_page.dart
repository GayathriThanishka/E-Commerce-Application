
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
//   void initState() {
// final provider = Provider.of<CartPageProvider>(context,listen: false);
// provider.seperateItem();
//    super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    final snap = context.watch<CartPageProvider>();
    return Consumer<CartPageProvider>(
      builder: (context, snap, child) => Scaffold(
        drawer: const NavbarList(),
        appBar: AppBar(
          title: const Text(
            "Vegetables",
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  snap.wishedButtonEvent(context);
                },
                icon: const Icon(Icons.favorite_outline_outlined),
                color: Colors.black),
            IconButton(
              onPressed: () {
                snap.cartButtonEvent(context);
              },
              icon: const Icon(Icons.shopping_cart_checkout_outlined),
              color: Colors.black,
            )
          ],
          backgroundColor: const Color(0XFF47BA1C),
        ),
        backgroundColor: const Color(0XFFE7F3CD),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: snap.vegetableslist.length,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.all(20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            snap.vegetableslist[index].image,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: const BorderRadius.only(
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
                          snap.vegetableslist[index].name,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          snap.vegetableslist[index].price,
                          style: const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(children: [
                      IconButton(
                          onPressed: () {
                            snap.wishedlist.add(snap.vegetableslist[index]);
                          },
                          icon: const Icon(Icons.favorite_outline_outlined)),
                      IconButton(
                          onPressed: () {
                            snap.cartlist.add(snap.vegetableslist[index]);
                          },
                          icon: const Icon(Icons.shopping_cart_checkout_outlined)),
                    ])
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
