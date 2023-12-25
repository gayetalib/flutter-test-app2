import 'package:flutter/material.dart';
import 'package:flutter_test_app2/recetteModel.dart';
import 'package:flutter_test_app2/recipeListScreen.dart';
import 'package:transparent_image/transparent_image.dart';
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
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      home: ReccipeListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => ReccipeListScreen());
      case '/recipe':
        return MaterialPageRoute(
            builder: (context) => RecetteScreen(
                recetteModel: settings.arguments as RecetteModel));
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text('Error'),
                    centerTitle: true,
                  ),
                  body: Center(child: Text('Page not found')),
                ));
    }
  }
}
