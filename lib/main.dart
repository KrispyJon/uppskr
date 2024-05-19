import 'package:flutter/material.dart';
import 'package:uppskr/filter_screen.dart';

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
      home: const FilterScreen(), // Start with the filter screen
    );
  }
}
