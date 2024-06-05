
import 'package:ecommerceapp/model/navbar_list.dart';
import 'package:ecommerceapp/responsive/responsive_Layout.dart';
import 'package:ecommerceapp/viewmodel/first_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key});

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  
  @override
  Widget build(BuildContext context) {
     final snap=context.watch<CartPageProvider>();
    return Scaffold(
      drawer: NavbarList(),
      appBar: AppBar(
     
        
          title: Text("Fruits",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black),),centerTitle: true,
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
        ), backgroundColor: Color(0XFFE7F3CD),
      
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
                           snap.fruitslist[index].image,
                          ),
                          fit: BoxFit.cover),
                    ),
                    margin: EdgeInsets.all(20),
                  ),
                  Text(
                    snap.fruitslist[index].name,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    snap.fruitslist[index].price,
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
                                  snap.fruitslist[index].image, 
                                ),
                                fit: BoxFit.cover),
                          ),
                          margin: EdgeInsets.all(20),
                        ),
                        Text(
                          snap.fruitslist[index].name,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          snap.fruitslist[index].price,
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
                                       snap.fruitslist[index].image,
                                      ),fit: BoxFit.cover),
                 
                             ),margin: EdgeInsets.all(20),), Text(
                       snap.fruitslist[index].name,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                       snap.fruitslist[index].price,
                        style: const TextStyle(fontSize: 16, color: Colors.grey),overflow: TextOverflow.ellipsis,
                      ),
               ],
             );},),
        ),
        ),
      );
      
    
  }
}