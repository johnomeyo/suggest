import 'package:flutter/material.dart';

class RecipeTextFields extends StatelessWidget {
  const RecipeTextFields(
      {super.key, required this.title, required this.hintText, this.icon});
  final String title;
  final String hintText;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  suffixIcon: icon,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  hintStyle:
                      TextStyle(color: Colors.grey.shade300, fontSize: 15)),
            ),
          ),
        )
      ],
    );
  }
}

class IngredientListTile extends StatelessWidget {
  const IngredientListTile({
    super.key,
    required this.ingredients,
  });
  final List<String> ingredients;
  @override
  Widget build(BuildContext context) {
    //List<String>.generate(10, (i) => 'Item $i');
    return ListView.builder(
      itemCount: ingredients.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 15,
              ),
            ),
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: ingredients[index],
                    hintStyle:
                        TextStyle(color: Colors.grey.shade300, fontSize: 15),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_outline,
                color: Color(0xffFF3438),
              ),
            ),
          ),
        );
      },
    );
  }
}

class RecipeButtons extends StatelessWidget {
  const RecipeButtons({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFECEC), borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Color(0xffFF3438),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFF3438),
                      fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
