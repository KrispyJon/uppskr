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
  bool isVegetarian = false;
  bool isKeto = false;

  void _navigateToRecipeList() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecipeListScreen(
          isVegan: isVegan,
          isLactoseFree: isLactoseFree,
          isGlutenFree: isGlutenFree,
          isVegetarian: isVegetarian,
          isKeto: isKeto,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hvernig mat viltu?'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 42,
          fontFamily: 'Balsoon',
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            SwitchListTile(
              title: const Text('Viltu vegan máltíð?',
              style: TextStyle(
                fontFamily: 'ArchitectsDaughter',
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              ),
              value: isVegan,
              onChanged: (bool value) {
                setState(() {
                  isVegan = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('Viltu Laktósa-fría máltíð?',
              style: TextStyle(
                fontFamily: 'ArchitectsDaughter',
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
              value: isLactoseFree,
              onChanged: (bool value) {
                setState(() {
                  isLactoseFree = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('Viltu glútein-lausa máltíð?',
                style: TextStyle(
                    fontFamily: 'ArchitectsDaughter',
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              value: isGlutenFree,
              onChanged: (bool value) {
                setState(() {
                  isGlutenFree = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('Viltu grænmetismáltíð?',
                style: TextStyle(
                    fontFamily: 'ArchitectsDaughter',
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              value: isVegetarian,
              onChanged: (bool value) {
                setState(() {
                  isVegetarian = value;
                });
              },
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('Viltu Ketó-máltíð?',
                style: TextStyle(
                    fontFamily: 'ArchitectsDaughter',
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              value: isKeto,
              onChanged: (bool value) {
                setState(() {
                  isKeto = value;
                });
              },
            ),
            const Divider(),
            ElevatedButton(
              onPressed: _navigateToRecipeList,
              child: const Text('Show Recipes'),
            ),
          ],
        ),
      ),
    );
  }
}
