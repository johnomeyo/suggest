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
    description:
        'A delicious Italian dish made with dough, tomato sauce, and cheese.',
    ingredients: [
      "1 head of lettuce ,chopped 🥬",
      "1 large carrot, grated 🥕",
      " 1 large cucumber, sliced 🥒",
      "1 large apple, chopped 🍎"
    ],
    recipe: [
      "In a large salad bowl, combine the chopped lettuce, grated carrot, sliced cucumber, chopped apples, cherrry tomatoes and raisins",
      "Sprinkle the feta cheese over the top of the salad",
      "Drizzle the balasmic vinegreitte over the salad and toss to combine",
      "Serve and enjoy"
    ],
    image: 'lib/assets/piza.jpg',
    caption: 'Vegetable & fruit salad with balasmic dressing',
  ),
  Food(
      name: "Berries",
      description:
          "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
      ingredients: [
        'Dough',
        'Tomato Sauce',
        'Cheese',
        'Toppings',
        'hey',
        'nudes',
        'sex'
      ],
      recipe: [
        "1. Preheat oven to 425°F. \n2. Roll out pizza dough. \n3. Spread tomato sauce on top. \n4. Add cheese and toppings. \n5. Bake for 15-20 minutes. \n6.Preheat oven at 425 F",
      ],
      image: 'lib/assets/berry.jpg',
      caption: 'Healthy combination and nutritious combination'),
  Food(
      name: "Burgers",
      description:
          "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
      ingredients: [
        'Dough',
        'Tomato Sauce',
        'Cheese',
        'Toppings',
        'hey',
        'nudes',
        'sex'
      ],
      recipe: [
        "1. Preheat oven to 425°F. \n2. Roll out pizza dough. \n3. Spread tomato sauce on top. \n4. Add cheese and toppings. \n5. Bake for 15-20 minutes. \n6.Preheat oven at 425 F",
      ],
      image: 'lib/assets/banana.jpg',
      caption: 'Feel free to add or substitute any ingredients'),
  Food(
      name: "Coffee",
      description:
          "This salad is healthy and nutritious combination of fresh vegetables and fruit with a tangy balasmic dressung.Feel free to add or substitute any ingredients to suit your taste",
      ingredients: [
        'Dough',
        'Tomato Sauce',
        'Cheese',
        'Toppings',
        'hey',
        'nudes',
        'sex'
      ],
      recipe: [
        "1. Preheat oven to 425°F.",
        "",
      ],
      image: 'lib/assets/home_background.jpg',
      caption: 'Fruit with a tangy balasmic dressing'),
  Food(
      name: "Noodles",
      description:
          " They’re extra garlicky and vegan! Of course, you can add extra protein and veggies to this to bulk it up and make it a whole meal. These noodles are super versatile and the best part is that they come together amazingly quickly.",
      ingredients: [
        'wide noodles',
        'neutral oil',
        'garlic',
        'red pepper flakes ',
        'soy sauce',
        'gochujang',
        'brown sugar'
      ],
      recipe: [
        "1.  Cook the noodles: bring a large pot of water to a boil and cook the noodles according to the package directions",
        "2.  Make the sauce: While the noodles are cooking, add the oil and heat the garlic and red pepper flakes in a nonstick pan over medium heat, stirring until the garlic is fragrant. Stir in the soy sauce, gochujang, and honey.",
        "3. Mix: Add the noodles to the pan and toss until all the noodles are glossy and coated. Loosen with a bit of noodle water if needed.",
        "4. Serve and enjoy😊❤️"
      ],
      image: 'lib/assets/noodles.jpg',
      caption:
          ' These noodles are saucy, spicy, a little bit sweet, and full of umami. '),
  Food(
      name: "Pancakes",
      description:
          "Our easy pancake recipe uses ingredients you likely have on hand, like all-purpose flour, baking powder, sugar, butter, and egg. Start with our basic recipe, or try one of our variations using buttermilk or yogurt.",
      ingredients: [
        '1 cup all-purpose flour, (spooned and leveled)',
        '2 tablespoons sugar',
        '2 teaspoons baking powder',
        '1/2 teaspoon salt',
        '1 cup milk',
        '2 tablespoons unsalted butter, melted, or vegetable oil',
        '1 large egg',
        '1 tablespoon vegetable oil'
      ],
      recipe: [
        "1 .Preheat oven to 200 degrees; have a baking sheet or heatproof platter ready to keep cooked pancakes warm in the oven. In a small bowl, whisk together flour, sugar, baking powder, and salt; set aside. ",
        "2. In a medium bowl, whisk together milk, butter (or oil), and egg. Add dry ingredients to milk mixture; whisk until just moistened (do not overmix; a few small lumps are fine).",
        "3. Heat a large skillet (nonstick or cast-iron) or griddle over medium. Fold a sheet of paper towel in half, and moisten with oil; carefully rub skillet with oiled paper towel.",
        "4. For each pancake, spoon 2 to 3 tablespoons of batter onto skillet, using the back of the spoon to spread batter into a round (you should be able to fit 2 to 3 in a large skillet).",
        "5. Cook until surface of pancakes have some bubbles and a few have burst, 1 to 2 minutes. ",
        "Serve and enjoy😊❤️"
      ],
      image: 'lib/assets/pancakes.webp',
      caption:
          'Homemade pancakes are a treat, but they are surprisingly simple to whip up.'),
  // Add more food items here
];
