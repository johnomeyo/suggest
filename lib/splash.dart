import 'dart:js';

import 'package:flutter/material.dart';
import 'package:suggest/main.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
      Center(
        child: Image.asset(
          "lib/assets/chef.png",
          height: 300,
        ),
      ),
       SizedBox(height: 100,),
      Center(
        child: Text(
          "Welcome to Cookpedia❤️😊",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
        ),
      )
        ],
      ),
    );
  }
}
