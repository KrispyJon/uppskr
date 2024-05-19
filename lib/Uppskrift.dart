class Recipe {
  final String title;
  final List<String> ingredients;
  final bool isVegan;
  final bool isLactoseFree;
  final bool isGlutenFree;
  final String imagePath;

  Recipe({
    required this.title,
    required this.ingredients,
    required this.isVegan,
    required this.isLactoseFree,
    required this.isGlutenFree,
    required this.imagePath,
  });
}
