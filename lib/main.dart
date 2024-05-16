import 'package:flutter/material.dart';
import 'package:uppskr/Uppskrift.dart';
import 'package:uppskr/data.dart';

void main() {
  runApp(const UppskriftarApp());
}


class UppskriftarApp extends StatelessWidget {
  const UppskriftarApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uppskriftir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecipeSelector(),
    );
  }
}


class RecipeSelector extends StatefulWidget {
  const RecipeSelector({super.key});

  @override
  _RecipeSelectorState createState() {
    return _RecipeSelectorState();
  }
}


class _RecipeSelectorState extends State<RecipeSelector> {
  bool isVegan = false;
  bool isLactoseFree = false;



  List<Recipe> get filteredRecipes {
    return Uppskriftir.where((recipe) {
      if (isVegan && !recipe.isVegan) return false;
      if (isLactoseFree && !recipe.isLactoseFree) return false;
      return true;
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Uppskriftir: '),
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      body:
      Column(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Vegan'),
            value: isVegan,
            onChanged: (bool value) {
              setState(() {
                isVegan = value;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Lactose-free'),
            value: isLactoseFree,
            onChanged: (bool value) {
              setState(() {
                isLactoseFree = value;
              });
            },
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: filteredRecipes.length,
              itemBuilder: (context, index) {
                final recipe = filteredRecipes[index];
                return ListTile(
                  leading: recipe.imagePath != null ? Image.asset(recipe.imagePath) : SizedBox(),
                  title: Text(recipe.title),
                  subtitle: Text(recipe.ingredients.join(', ')),
                );
              },
            ),

          ),
        ],
      ),

    );
  }
}
