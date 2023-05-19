// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:suggest/get_started/cuisines.dart';
import 'package:suggest/my_widgets/widgets.dart';

void main() => runApp(CookingLevel());

class CookingLevel extends StatelessWidget {
  CookingLevel({super.key});
  final ValueNotifier<int> selected = ValueNotifier<int>(-1);

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
                    "What is your cooking level🥘",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Please select your cooking level for better recommendations.",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                TheContainers(
                  title: "Novice",
                  description:
                      "Basic Understanding of kitchen toools and basic cooking techniques such as boiling and frying.",
                  index: 0,
                  selected: selected,
                ),
                TheContainers(
                  title: "Intermediate",
                  description:
                      "Ability to followe recipes, prepare simple dishes and basic knive skills",
                  index: 1,
                  selected: selected,
                ),
                TheContainers(
                  title: "Advanced",
                  description:
                      "Understanding of cooking principles, create recipes & proficiency in various cooking techniques such as baking,grilling and roasting.",
                  index: 2,
                  selected: selected,
                ),
                TheContainers(
                  title: "Professional",
                  description:
                      'Basic Understanding of kitchen toools and basic cooking techniques such as boiling and frying.',
                  index: 3,
                  selected: selected,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cuisines()));
            },
            child: MyButtons(name: "Continue")),
      ),
    );
  }
}

class TheContainers extends StatefulWidget {
  const TheContainers(
      {super.key,
      required this.title,
      required this.description,
      required this.selected,
      required this.index});
  final String title;
  final String description;
  final ValueNotifier<int> selected;
  final int index;
  State<TheContainers> createState() => _TheContainersState();
}

class _TheContainersState extends State<TheContainers> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          widget.selected.value = widget.index;
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  width: 1,
                  color: isSelected ? Colors.red : Colors.grey.shade200)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.description,
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
    );
  }
}
