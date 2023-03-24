import 'package:flutter/material.dart';
import 'package:suggest/get_started/cuisines.dart';
import 'package:suggest/my_widgets/widgets.dart';

void main() => runApp(const CookingLevel());

class CookingLevel extends StatelessWidget {
  const CookingLevel({super.key});

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
                  "What is your cooking",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 15),
                child: Text(
                  "level? 🥘",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Please select your cooking level for \nbetter recommendations.",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.grey.shade200)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Novice",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Basic Understanding of kitchen toools and basic cooking techniques such as boiling and frying.",
                            style: TextStyle(
                                color: Color(
                                  0xFF606060,
                                ),
                                fontSize: 15),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade200)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Intermediate",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Ability to followe recipes, prepare simple dishes and basic knive skills",
                            style: TextStyle(
                                color: Color(
                                  0xFF606060,
                                ),
                                fontSize: 15),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade200)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Advanced",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Understanding of cooking principles, create recipes & proficiency in various cooking techniques such as baking,grilling and roasting.",
                            style: TextStyle(
                                color: Color(
                                  0xFF606060,
                                ),
                                fontSize: 15),
                          ),
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade200)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Professional",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Basic Understanding of kitchen toools and basic cooking techniques such as boiling and frying.",
                            style: TextStyle(
                                color: Color(
                                  0xFF606060,
                                ),
                                fontSize: 15),
                          ),
                        ]),
                  ),
                ),
              ),
             
            ],
                  ),
                ),
          ),
          bottomNavigationBar:  GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cuisines()));
                  },
                  child: MyButtons(name: "Continue")),
          ),
    );
  }
}
