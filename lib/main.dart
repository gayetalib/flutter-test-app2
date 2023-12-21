import 'package:flutter/material.dart';
import 'package:flutter_test_app2/recetteModel.dart';
import 'package:flutter_test_app2/recipeListScreen.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_test_app2/recette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ReccipeListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
