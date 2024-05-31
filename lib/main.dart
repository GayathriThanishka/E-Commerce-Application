import 'package:ecommerceapp/view/login_page.dart';
import 'package:ecommerceapp/view/splash_page.dart';
import 'package:ecommerceapp/view/vegetables_page.dart';
import 'package:ecommerceapp/viewmodel/first_page_provider.dart';
import 'package:ecommerceapp/viewmodel/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<CartPageProvider>(
            create: (context) => CartPageProvider(),
          ),
          
          ChangeNotifierProvider<LoginProvider>(
            create: (context) => LoginProvider(),
          ),
          
        ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        
         
        home:SplashPage(),
       
      
      ),
    );
  }
}


 