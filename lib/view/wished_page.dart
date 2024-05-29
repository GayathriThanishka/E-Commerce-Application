import 'package:ecommerceapp/model/item_list.dart';
import 'package:flutter/material.dart';

class WishedPage extends StatefulWidget {
  const WishedPage({super.key});

  @override
  State<WishedPage> createState() => _WishedPageState();
}

class _WishedPageState extends State<WishedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist & Collections",style :TextStyle(fontSize: 20,color: Colors.black),),), backgroundColor: Color(0XFF47BA1C),
      
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: wishlist.length,
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
                          wishlist[index].image,
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
                        wishlist[index].name,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        wishlist[index].price,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                   Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            wishlist.remove(itemlist[index]);
                          });
                        },
                        icon: Icon(Icons.delete_outline_rounded),
                      ),
                    ],
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