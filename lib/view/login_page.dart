import 'package:ecommerceapp/viewmodel/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final appkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, snap, child) => Scaffold(
          appBar: AppBar(
            title: Text(
              "STOP & SHOP",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Color(0XFF47BA1C),
          ),
          backgroundColor: Color(0XFFE7F3CD),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: appkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.rNXGfSangwio7RgnSoiRsAHaG9?w=511&h=480&rs=1&pid=ImgDetMain"),radius:50),
                      SizedBox(height: 30,),
                      const Text("User Login",
                          style: TextStyle(fontSize: 24,
                            color:Colors.black,
                            fontWeight: FontWeight.w800,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30,left: 30),
                        child: TextFormField(
                          controller: snap.emailIdController,
                          validator: (value) => snap.emailValidation(value),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            contentPadding: EdgeInsets.all(20),
                            isDense: true,
                            label: Text("Mailid"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30,left: 30),
                        child: TextFormField(
                          controller: snap.passwordController,
                          validator: (value) => snap.passwordValidation(value),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            contentPadding: EdgeInsets.all(20),
                            isDense: true,
                            label: Text("Password"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () => snap.submitButtonClickEvent(
                              context: context, appkey: appkey),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(100, 50),
                            backgroundColor: const Color(0XFF69E68A),
                          ),
                          child: const Text(
                            "Submit",
                            style: TextStyle(color: Color(0XFF022D60)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
