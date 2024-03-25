import 'package:flutter/material.dart';
import 'package:monsoonapp2/favourites.dart';
import 'package:monsoonapp2/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Favourites(),
    );
  }
}
