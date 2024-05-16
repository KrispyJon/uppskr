class Recipe {
  final String title;
  final List<String> ingredients;
  final bool isVegan;
  final bool isLactoseFree;
  final String imagePath;

  Recipe({
    required this.title,
    required this.ingredients,
    required this.isVegan,
    required this.isLactoseFree,
    required this.imagePath,
  });
}
