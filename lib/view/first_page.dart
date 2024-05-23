import 'package:ecommerceapp/model/item_list.dart';
import 'package:ecommerceapp/view/Cart_Page.dart';

import 'package:flutter/material.dart';


class EcommerceFirstPage extends StatefulWidget {
  const EcommerceFirstPage({super.key});

  @override
  State<EcommerceFirstPage> createState() => _EcommerceFirstPageState();
}

class _EcommerceFirstPageState extends State<EcommerceFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vegitables"),
        actions: [IconButton(onPressed: (){}, icon:Icon( Icons.favorite_outline_outlined)),IconButton(onPressed: (){return cartButtonEvent();
         
        }, icon:Icon( Icons.shopping_cart_checkout_outlined))],
        backgroundColor: const Color.fromARGB(255, 120, 179, 121),
        
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
                      Text(itemlist[index].name,
                        
                        style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                      Text(
                        itemlist[index].price,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),Row(
                    children: [IconButton(onPressed: (){}, icon:Icon( Icons.favorite_outline_outlined)),IconButton(onPressed: (){}, icon:Icon( Icons.shopping_cart_checkout_outlined)),
                    ]
              
                  )
                  
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
//  Column(
//          children: [Image.network(itemlist[index].image,fit: BoxFit.cover,),],
//        ),
  //      ListView.builder(itemBuilder:(BuildContext context, int index)
  //  {