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
          image: DecorationImage(
            image: AssetImage('Assets/myndir/SÍMABAKGRUNNUR.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'Assets/LOGO_RECIPE_APP.png',
              width: 500,
              height: 250,
            ),
            const SizedBox(height: 50),
            const Text(
              'Finndu hina fullkomnu uppskrift !',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'fenwick outline',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => _navigateToFilterScreen(context),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blueAccent, backgroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Af stað!',
              ),
              ),
          ],
        ),
      ),
    );
  }
}
