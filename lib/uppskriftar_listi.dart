import 'package:flutter/material.dart';
import 'package:uppskr/Uppskrift.dart';
import 'package:uppskr/data.dart';
import 'package:uppskr/uppskriftar_screen.dart';

class RecipeListScreen extends StatelessWidget {
  final bool isVegan;
  final bool isLactoseFree;
  final bool isGlutenFree;
  final bool isVegetarian;
  final bool isKeto;

  const RecipeListScreen({
    Key? key,
    required this.isVegan,
    required this.isLactoseFree,
    required this.isGlutenFree,
    required this.isVegetarian,
    required this.isKeto,
  }) : super(key: key);

  List<Recipe> get filteredRecipes {
    return Uppskriftir.where((recipe) {
      if (isVegan && !recipe.isVegan) return false;
      if (isLactoseFree && !recipe.isLactoseFree) return false;
      if (isGlutenFree && !recipe.isGlutenFree) return false;
      if (isVegetarian && !recipe.isVegetarian) return false;
      if (isKeto && !recipe.isKeto) return false;
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtered Recipes'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: filteredRecipes.length,
          itemBuilder: (context, index) {
            final recipe = filteredRecipes[index];
            return ListTile(
              leading: recipe.imagePath.isNotEmpty
                  ? Image.asset(
                recipe.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              )
                  : const SizedBox(width: 50, height: 50),
              title: Text(recipe.title),
              subtitle: Text(recipe.ingredients.join(', ')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailScreen(recipe: recipe),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
