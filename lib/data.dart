import 'package:uppskr/Uppskrift.dart';


final List<Recipe> Uppskriftir = [
  Recipe(
    title: "Vegan Salad",
    ingredients: ["Lettuce", "Tomato", "Cucumber"],
    imagePath: "Assets/green-salad.jpg",
    isVegan: true,
    isLactoseFree: true,
    isGlutenFree: true,
  ),
  Recipe(
    title: "Cheese Omelette",
    ingredients: ["Eggs", "Cheese", "Butter"],
    imagePath: "Assets/Omelette.jpeg",
    isVegan: false,
    isLactoseFree: false,
    isGlutenFree: false,

  ),
  Recipe(
    title: "Banana Smoothie",
    ingredients: ["Almond milk", "Bananas", "Ice cubes", "Honey"],
    imagePath: "Assets/Smoothie.jpeg",
    isVegan: true,
    isLactoseFree: true,
    isGlutenFree: true,
  ),

];
