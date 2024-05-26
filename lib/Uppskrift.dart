class Recipe {
  final String title;
  final List<String> ingredients;
  final bool isVegan;
  final bool isLactoseFree;
  final bool isGlutenFree;
  final bool isVegetarian;
  final bool isKeto;
  final String imagePath;

  Recipe({
    required this.title,
    required this.ingredients,
    required this.isVegan,
    required this.isLactoseFree,
    required this.isGlutenFree,
    required this.isVegetarian,
    required this.isKeto,
    required this.imagePath,
  });
}
