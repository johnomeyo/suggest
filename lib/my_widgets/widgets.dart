// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:percent_indicator/percent_indicator.dart';

///import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MyButtons extends StatelessWidget {
  final String name;
  const MyButtons({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xFFFF3438), borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
              child: Text(
            name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
          )),
        ),
      ),
    );
  }
}

class DropDowns extends StatefulWidget {
  const DropDowns({super.key});

  @override
  State<DropDowns> createState() => _DropDownsState();
}

class _DropDownsState extends State<DropDowns> {
  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: DropdownButton(
          value: value,
          isExpanded: true,
          elevation: 0,
          underline: Container(height: 1,color: Colors.transparent,),
          hint: Text("Gender"),
          icon: Icon(Icons.arrow_drop_down_outlined),
          iconEnabledColor: Color(0xFFFF3438),
          items: [
            DropdownMenuItem(value: 'Male', child: Text("Male")),
            DropdownMenuItem(value: 'female', child: Text("Female")),
            DropdownMenuItem(value: 'trans', child: Text("Trans")),
          ],
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          }),
    );
  }
}

class Top extends StatelessWidget {
  const Top({super.key,});
  // final Widget other;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(child: Icon(Icons.arrow_back)),
        ProgressIndicator(percentage: 0.5,),
      ],
    );
  }
}

class ProgressIndicator extends StatefulWidget {
  final double percentage;
  const ProgressIndicator({
    super.key,
    required this.percentage,
  });

  @override
  State<ProgressIndicator> createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicator> {
// late final double percentage;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      percent: widget.percentage,
      width: 200,
      lineHeight: 10.0,
      animation: true,
      animationDuration: 1000,
      backgroundColor: Colors.grey.shade200,
      progressColor: Color(0xffFF3438),
      barRadius: Radius.circular(10),
    );
  }
}

class FoodTile extends StatelessWidget {
  // final String itemName;
  //  final String imagePath;
  const FoodTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imageItems = [
      'lib/assets/salad.png',
      'lib/assets/eggs.png',
      'lib/assets/soup.png',
      'lib/assets/meat.png',
      'lib/assets/chicken.png',
      'lib/assets/prawn.png',
      'lib/assets/burger.png',
      'lib/assets/pizza.png',
      'lib/assets/sushi.png',
      'lib/assets/rice.png',
      'lib/assets/toast.png',
      'lib/assets/fruits.png',
    ];
    List<String> itemNames = [
      ' Salad',
      ' Egg',
      ' Soup',
      ' Meat',
      ' Chicken',
      ' Seafood',
      ' Burger',
      ' Pizza',
      ' Sushi',
      ' Rice',
      ' Toast',
      ' Fruits',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: imageItems.length, // number of items in the grid view
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // number of columns in the grid view
          mainAxisSpacing: 10.0, // spacing between rows
          crossAxisSpacing: 10.0, // spacing between columns
          childAspectRatio: 1.0, // aspect ratio of each item (width / height)
        ),
        itemBuilder: (context, int index) {
          // function that builds each item in the grid view
          return Container(
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    imageItems[index],
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      itemNames[index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MyTextFields extends StatelessWidget {
  final String hintPhrase;

  const MyTextFields({
    super.key,
    required this.hintPhrase,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextField(
        decoration: InputDecoration(

            //labelStyle: TextStyle(color: const Color(0xFFFF3438)),
            hintText: hintPhrase,
            border: UnderlineInputBorder()),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String hintPhrase;
  final icon;
  final bool obsecureText;

  const MyTextField({
    super.key,
    required this.obsecureText,
    required this.hintPhrase,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextField(
        obscureText: obsecureText,
        decoration: InputDecoration(
            suffixIcon: icon,
            suffixIconColor: Colors.grey.shade600,
            //labelStyle: TextStyle(color: const Color(0xFFFF3438)),
            hintText: hintPhrase,
            border: UnderlineInputBorder()),
      ),
    );
  }
}
