import 'dart:math';

import 'package:ecommerceapp/view/fruits_page.dart';
import 'package:ecommerceapp/view/home_page.dart';
import 'package:ecommerceapp/view/login_page.dart';
import 'package:ecommerceapp/view/nuts_page.dart';
import 'package:ecommerceapp/view/vegetables_page.dart';
import 'package:ecommerceapp/viewmodel/first_page_provider.dart';
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
                  decoration: BoxDecoration(color: Color(0XFF47BA1C)),
                  accountName: Text(
                    "Gayathri",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "gayathri@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        "https://media.istockphoto.com/id/1483473258/photo/smiling-young-woman-professional-in-formal-wear-with-arms-crossed-and-looking-at-camera.jpg?s=1024x1024&w=is&k=20&c=aA_psXlJflGGQ5q0dv7HALcX_K2LI9HeTEy6gMgTWMk=a",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              snap.seperateItem();
                              return HomePage();
                            },
                          ),
                        );
                      },
                      child: Text("Home")),
                ),
                ListTile(
                  title: InkWell(
                      onTap: () {
                        setState(() {});
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            snap.seperateItem();
                            return VegetablesPage();
                          },
                        ));
                      },
                      child: Text("Vegetables")),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FruitsPage();
                          },
                        ),
                      );
                    },
                    child: Text("Fruits"),
                  ),
                ),
                ListTile(
                  title: InkWell(onTap: () { Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NutsPage();
                          },
                        ),
                      );}, child: Text("Nuts")),
                )
              ],
            ),
          ])),
    );
  }
}
