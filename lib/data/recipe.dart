
class Food {
  final String name;
  final String description;
  final List<String> ingredients;
  final List<String> recipe;
  final String image;
   final String caption;
  

  const Food({
    required this.name,
    required this.description,
    required this.ingredients,
    required this.recipe,
    required this.image,
     required this.caption,
  });
}

final List<Food> foods = [
  Food(
    name: 'Pizza',
    description: 'A delicious Italian dish made with dough, tomato sauce, and cheese.',
    ingredients: ["1 head of lettuce ,chopped 🥬","1 large carrot, grated 🥕"," 1 large cucumber, sliced 🥒", "1 large apple, chopped 🍎"],
    recipe: ["In a large salad bowl, combine the chopped lettuce, grated carrot, sliced cucumber, chopped apples, cherrry tomatoes and raisins",
    "Sprinkle the feta cheese over the top of the salad",
    "Drizzle the balasmic vinegreitte over the salad and toss to combine",
    "Serve and enjoy"
    ],
    image: 'lib/assets/piza.jpg',
    caption: 'Vegetable & fruit salad with balasmic dressing',
  ),
  Food
  (
name: "Berries",
description: "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
ingredients: ['Dough', 'Tomato Sauce', 'Cheese', 'Toppings','hey','nudes','sex'],
recipe: ["1. Preheat oven to 425°F. \n2. Roll out pizza dough. \n3. Spread tomato sauce on top. \n4. Add cheese and toppings. \n5. Bake for 15-20 minutes. \n6.Preheat oven at 425 F",],
image: 'lib/assets/berry.jpg',
caption: 'Healthy combination and nutritious combination'
  ),
   Food
  (
name: "Burgers",
description: "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
ingredients: ['Dough', 'Tomato Sauce', 'Cheese', 'Toppings','hey','nudes','sex'],
recipe: ["1. Preheat oven to 425°F. \n2. Roll out pizza dough. \n3. Spread tomato sauce on top. \n4. Add cheese and toppings. \n5. Bake for 15-20 minutes. \n6.Preheat oven at 425 F",],
image: 'lib/assets/banana.jpg',
 caption: 'Feel free to add or substitute any ingredients'
  ),
   Food
  (
name: "Coffee",
description: "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
ingredients: ['Dough', 'Tomato Sauce', 'Cheese', 'Toppings','hey','nudes','sex'],
recipe: ["1. Preheat oven to 425°F.","",],
image: 'lib/assets/home_background.jpg', 
caption: 'Fruit with a tangy balasmic dressing'
  ), 
  // Add more food items here
];
