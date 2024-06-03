

import 'package:ecommerceapp/view/fruits_page.dart';
import 'package:ecommerceapp/view/home_page.dart';
import 'package:ecommerceapp/view/login_page.dart';
import 'package:ecommerceapp/view/nuts_page.dart';
import 'package:ecommerceapp/view/vegetables_page.dart';
import 'package:ecommerceapp/viewmodel/first_page_provider.dart';
import 'package:ecommerceapp/viewmodel/image_picker.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class NavbarList extends StatefulWidget {
  const NavbarList({super.key});

  @override
  State<NavbarList> createState() => _NavbarListState();
}

class _NavbarListState extends State<NavbarList> {
  @override
  Widget build(BuildContext context) {
    final snap = context.watch<CartPageProvider>();
    return Drawer(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(children: [
             Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Color(0XFF47BA1C)),
                  accountName: const Text(
                    "Gayathri",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: const Text(
                    "gayathri@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child:InkWell(
        onTap: () { 
          snap.getImage();
       
        
          
  
            
          
        },child: Image.file(snap.image!),),
                       
                      ),
                    ),
                  ),
              ],
                ),
                ListTile(
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              snap.seperateItem();
                              return const HomePage();
                            },
                          ),
                        );
                      },
                      child: const Text("Home")),
                ),
                ListTile(
                  title: InkWell(
                      onTap: () {
                        setState(() {});
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            snap.seperateItem();
                            return const VegetablesPage();
                          },
                        ));
                      },
                      child: const Text("Vegitables")),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const FruitsPage();
                          },
                        ),
                      );
                    },
                    child: const Text("Fruits"),
                  ),
                ),
                ListTile(
                  title: InkWell(onTap: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const NutsPage();
                          },
                        ),
                      );}, child: const Text("Nuts")),
                ),
                ListTile(
                  title: InkWell(onTap: () { Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginPage()), (route) => false);
                          },child: const Text("LogOut"),
                        ),
              ),
                
              ],
            ),
      ),
    );
  }
}
