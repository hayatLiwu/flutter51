import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 8, 74),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 600,
              height: Height * .25,
              child: Image.asset(
                "asset/images/topImage.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 500,
              height: 195,
              child: Image.asset(
                "asset/images/bulild.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: customInputDecoretion("Email"),
                  ),
                  TextField(
                    decoration: customInputDecoretion("Password"),
                  ),
                  customSizedBox(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Pasword?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 159, 135, 225)),
                      ),
                    ),
                  ),
                  customSizedBox(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 19, 8, 39)),
                        child: Center(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                color: Color.fromARGB(255, 243, 242, 246)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  customSizedBox(),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Color.fromARGB(255, 159, 135, 225)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customSizedBox() => const SizedBox(
        height: 10,
      );

  InputDecoration customInputDecoretion(String hintext) {
    return InputDecoration(
      hintText: hintext,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
    );
  }
}
