class Chef {
  final String name;
  final String username;
  final String image;
  final String recipes;
  final String following;
  final String followers;
  final String description;

  const Chef({
    required this.name,
    required this.username,
    required this.image,
    required this.recipes,
    required this.following,
    required this.followers,
    required this.description,
  });
}

final List<Chef> chefs = [
  Chef(
      name: "George Eddings",
      username: "@george_eddings",
      image: "lib/assets/jesson.jpg",
      recipes: "200",
      following: "150",
      followers: "30k",
      description:
          "This quick brown jumped over the lazy dogs as they stood up and watch with their dumb asses just watching like some lonely creeps. This is a bad habit btw"),
  Chef(
      name: "Wycliff Oyoo",
      username: "@bz_wicky",
      image: "lib/assets/rc.jpg",
      recipes: "1",
      following: "1500",
      followers: "300",
      description:
          "This quick brown jumped over the lazy dogs as they stood up and watch with their dumb asses just watching like some lonely creeps. This is a bad habit btw"),
  Chef(
      name: "Samson Nyabuto",
      username: "@sam_nyabs",
      image: "lib/assets/ronan.jpg",
      recipes: "10",
      following: "97",
      followers: "65",
      description:
          "This quick brown jumped over the lazy dogs as they stood up and watch with their dumb asses just watching like some lonely creeps. This is a bad habit btw"),
  Chef(
      name: "Mohammed Yusuf",
      username: "@moha",
      image: "lib/assets/rk.jpg",
      recipes: "200",
      following: "150",
      followers: "30k",
      description:
          "This quick brown jumped over the lazy dogs as they stood up and watch with their dumb asses just watching like some lonely creeps. This is a bad habit btw"),
];
