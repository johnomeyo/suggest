import 'package:flutter/material.dart';

class Chefs extends StatelessWidget {
  final String chefName;
  final String imagePath;
  const Chefs({super.key, required this.chefName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Text(
            chefName,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

bool isObsolete = false;

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isObsolete = !isObsolete;
            });
          },
          child: Icon(isObsolete ? Icons.remove_red_eye : Icons.favorite),
        ),
      ),
      obscureText: isObsolete,
    );
  }
}

class BackPress extends StatelessWidget {
  const BackPress({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ));
  }
}

class SettingItems extends StatelessWidget {
  const SettingItems(
      {super.key,
      required this.title,
      required this.color,
      required this.icon,
      required this.iconColor});
  
  // ignore: prefer_typing_uninitialized_variables
  final   icon;
  final String title;
  final Color color;

  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontStyle: FontStyle.normal),
        ),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }
}

class ChefDisplay extends StatelessWidget {
  // final String itemName;
  //  final String imagePath;
  const ChefDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> imageItems = [
      'lib/assets/jesson.jpg',
      'lib/assets/jonathan.jpg',
      'lib/assets/febrian.jpg',
      'lib/assets/rk.jpg',
      'lib/assets/rc.jpg',
      'lib/assets/ronan.jpg',
    ];
    List<String> itemNames = [
      ' Jesson',
      ' Jonathan',
      ' Ronan',
      ' Kessy',
      ' Mohammed',
      ' Febrian',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        itemCount: imageItems.length, // number of items in the grid view
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of columns in the grid view
          mainAxisSpacing: 10.0, // spacing between rows
          crossAxisSpacing: 10.0, // spacing between columns
          childAspectRatio: 1.0, // aspect ratio of each item (width / height)
        ),
        itemBuilder: (context, int index) {
          // function that builds each item in the grid view
          return Container(
            height: 300,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border.all(
                    width: 1, color: Color.fromRGBO(238, 238, 238, 1)),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      imageItems[index],
                    ),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  itemNames[index],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Color(0xffFF3438),
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
      value: light,
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
          ),
        ),
        Spacer(),
        MySwitch()
      ],
    );
  }
}
