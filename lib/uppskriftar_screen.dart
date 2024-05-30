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
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35,
          fontFamily: 'Balsoon'
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Uppskrift:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...recipe.ingredients.map((ingredient) => Text(
                ingredient,
                style: const TextStyle(fontSize: 16),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
