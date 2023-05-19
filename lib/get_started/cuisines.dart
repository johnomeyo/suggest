import 'package:flutter/material.dart';
import 'package:suggest/get_started/complete_profile.dart';

import '../my_widgets/widgets.dart';

void main() => runApp(const Cuisines());

class Cuisines extends StatelessWidget {
  const Cuisines({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Top()),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 15),
                child: Text(
                  "Select your cuisine preferences🥘",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Please select your cooking level for better recommendations or you can skip it.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
             
              SizedBox(
                height: 20,
              ),
              
          
              SizedBox(
                height: 400,
                child: FoodTile(),
              ),
              
            ],
                  ),
                ),
          ),
          bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompleteProfile()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0XffFFECEC),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: Text(
                              "Skip",
                              style: TextStyle(color: Color(0xFFFF3438)),
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CompleteProfile()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFFF3438),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
          ),
    );
  }
}
