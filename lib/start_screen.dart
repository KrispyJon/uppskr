import 'package:flutter/material.dart';
import 'package:uppskr/filter_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void _navigateToFilterScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FilterScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.deepPurple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'Assets/LOGO_RECIPE_APP.png',
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 30),
              const Text(
                'Finndu hina fullkomnu uppskrift!',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Balsoon',
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => _navigateToFilterScreen(context),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blueAccent, backgroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Af stað!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
