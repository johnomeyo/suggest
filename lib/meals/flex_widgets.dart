import 'package:flutter/material.dart';

import '../data/recipe.dart';
import '../my_widgets/them.dart';

class FoodGrid extends StatelessWidget {
  const FoodGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: foods.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        final food = foods[index];

        return GestureDetector(
          onTap: () {
           
            Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FoodDetailsPage(food: food)),
    );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(food.image),fit: BoxFit.cover),
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Text(food.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
                )),
            ),
          ),
        );
      },
    );
  }
}
