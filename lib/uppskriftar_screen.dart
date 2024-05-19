import 'package:flutter/material.dart';
import 'package:uppskr/Uppskrift.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            recipe.imagePath.isNotEmpty
                ? Image.asset(recipe.imagePath)
                : const SizedBox(),
            const SizedBox(height: 16),
            Text(
              recipe.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (var ingredient in recipe.ingredients)
              Text(
                ingredient,
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 16),
            Text(
              'Vegan: ${recipe.isVegan ? "Yes" : "No"}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Lactose Free: ${recipe.isLactoseFree ? "Yes" : "No"}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Gluten Free: ${recipe.isGlutenFree ? "Yes" : "No"}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
