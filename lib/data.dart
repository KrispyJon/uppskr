import 'package:uppskr/Uppskrift.dart';

final List<Recipe> Uppskriftir = [
  Recipe(
    title: "Vegan Salad",
    ingredients: ["Lettuce", "Tomato", "Cucumber"],
    imagePath: "Assets/green-salad.jpg", // Ensure the path is correct
    isVegan: true,
    isLactoseFree: true,
    isGlutenFree: true,
    isVegetarian: true,
    isKeto: true,
  ),
  Recipe(
    title: "Cheese Omelette",
    ingredients: ["Eggs", "Cheese", "Butter"],
    imagePath: "Assets/Omelette.jpeg", // Ensure the path is correct
    isVegan: false,
    isLactoseFree: false,
    isGlutenFree: false,
    isVegetarian: true,
    isKeto: true,
  ),
  Recipe(
    title: "Banana Smoothie",
    ingredients: ["Almond milk", "Bananas", "Ice cubes", "Honey"],
    imagePath: "Assets/Smoothie.jpeg", // Ensure the path is correct
    isVegan: true,
    isLactoseFree: true,
    isGlutenFree: true,
    isVegetarian: true,
    isKeto: true,
  ),
];
