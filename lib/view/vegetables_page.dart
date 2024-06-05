
import 'package:ecommerceapp/model/navbar_list.dart';
import 'package:ecommerceapp/responsive/responsive_Layout.dart';
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
   // final snap = context.watch<CartPageProvider>();
    return Consumer<CartPageProvider>(
      builder: (context, snap, child) => Scaffold(
        drawer: const NavbarList(),
        appBar: AppBar(
          title: const Text(
            "Vegitables",
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
        body: ResponsiveLayout(
          mobileBody: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey,width: 1),
                      image: DecorationImage(
                          image: NetworkImage(
                           snap.vegetableslist[index].image,
                          ),
                          fit: BoxFit.cover),
                    ),
                    margin: EdgeInsets.all(20),
                  ),
                  Text(
                    snap.vegetableslist[index].name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    snap.vegetableslist[index].price,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            },
          ),
          desktopBody: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                     ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          
                
               
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey,width: 1),
                            image: DecorationImage(
                                image: NetworkImage(
                                  snap.vegetableslist[index].image, 
                                ),
                                fit: BoxFit.cover),
                          ),
                          margin: EdgeInsets.all(20),
                        ),
                        Text(
                          snap.vegetableslist[index].name,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          snap.vegetableslist[index].price,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          tabletBody: Expanded(
          child: GridView.builder(itemCount: 10,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20), itemBuilder: (context, index) {
             return Column(
               children: [
                 Container(
                   height: 250,
                  width: 250,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey,width: 1),image:DecorationImage(image: NetworkImage(
                                       snap.vegetableslist[index].image,
                                      ),fit: BoxFit.cover),
                 
                             ),margin: EdgeInsets.all(20),), Text(
                       snap.vegetableslist[index].name,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                       snap.vegetableslist[index].price,
                        style: const TextStyle(fontSize: 16, color: Colors.grey),overflow: TextOverflow.ellipsis,
                      ),
               ],
             );},),
        ),
        ),
        ),
      );
    
    
  }
}
