// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

///import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    double currentValue = 4;
    return SizedBox(
      width: 200,
      child: SliderTheme(
        data: SliderThemeData(
          activeTickMarkColor: Colors.black45,
          inactiveTickMarkColor: Colors.amber,
          trackHeight: 5,
          thumbShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          value: currentValue,
          min: 0,
          max: 10,
          divisions: 6,
          activeColor: Color(0xFFED3034),
          inactiveColor: Color(0xFFEFEEEE),
          onChanged: (value) {
            setState(() {
              currentValue = value;
            });
          },
        ),
      ),
    );
  }
}

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
    return DropdownButton(
        value: value,
        isExpanded: true,
        elevation: 0,
        hint: Text("Gender"),
        icon: Icon(Icons.arrow_drop_down_outlined),
        iconEnabledColor: Color(0xFFFF3438),
        items: [
          DropdownMenuItem(
            value: 'Male',
            child: Text("male"),
          ),
          DropdownMenuItem(value: 'female', child: Text("Female")),
          DropdownMenuItem(value: 'trans', child: Text("Trans")),
        ],
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        });
  }
}

class Top extends StatefulWidget {
  const Top({super.key});

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(child: Icon(Icons.arrow_back)),
        MySlider(),
      ],
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
            suffixIconColor: Color(0xFFFF3438),
            //labelStyle: TextStyle(color: const Color(0xFFFF3438)),
            hintText: hintPhrase,
            border: UnderlineInputBorder()),
      ),
    );
  }
}
