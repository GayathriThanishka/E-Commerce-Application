
import 'package:ecommerceapp/view/login_page.dart';

import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initState() {
   
    Future.delayed(
      const Duration(milliseconds: 1000),
      () {
        return Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginPage()), (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFE7F3CD),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.rNXGfSangwio7RgnSoiRsAHaG9?w=511&h=480&rs=1&pid=ImgDetMain"),radius:100),
                      SizedBox(height: 30,),
            Text(
              "STOP & SHOP",
              style:
                  TextStyle(fontWeight: FontWeight.w900, color:Color(0XFF47BA1C) ,fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
