import 'package:flutter/material.dart';
import 'package:uppskr/uppskriftar_listi.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isVegan = false;
  bool isLactoseFree = false;
  bool isGlutenFree = false;

  void _navigateToRecipeList() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecipeListScreen(
          isVegan: isVegan,
          isLactoseFree: isLactoseFree,
          isGlutenFree: isGlutenFree,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Filters'),
      ),
      body: Column(
        children: <Widget>[
          SwitchListTile(
            title: const Text('Viltu vegan máltíð?'),
            value: isVegan,
            onChanged: (bool value) {
              setState(() {
                isVegan = value;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Viltu Laktósa-fría máltíð?'),
            value: isLactoseFree,
            onChanged: (bool value) {
              setState(() {
                isLactoseFree = value;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Viltu glútein-lausa máltíð?'),
            value: isGlutenFree,
            onChanged: (bool value) {
              setState(() {
                isGlutenFree = value;
              });
            },
          ),
          const Divider(),
          SwitchListTile(
            title: const Text('Viltu glútein-lausa máltíð?'),
            value: isGlutenFree,
            onChanged: (bool value) {
              setState(() {
                isGlutenFree = value;
              });
            },
          ),
          const Divider(),
          ElevatedButton(
            onPressed: _navigateToRecipeList,
            child: const Text('Sjá uppskriftir'),
          ),
        ],
      ),
    );
  }
}
