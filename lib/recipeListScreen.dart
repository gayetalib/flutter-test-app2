import 'package:flutter/material.dart';
import 'package:flutter_test_app2/recetteModel.dart';

class ReccipeListScreen extends StatelessWidget {
  //const ReccipeListScreen({super.key});
  final List<RecetteModel> recipes = [
    RecetteModel(
        "Pizza",
        "David Silvera",
        "images/pizza.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Burger",
        "Amadou Silvera",
        "images/burger.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Chocolat",
        "Amadou Silvera",
        "images/chocolat.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Beurre",
        "Amadou Silvera",
        "images/beurre.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Lait",
        "Amadou Silvera",
        "images/lai.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Café",
        "Amadou Silvera",
        "images/cafe.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 143, 178, 239),
      appBar: AppBar(
        title: Text(
          'Mes recettes',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 143, 178, 239)),
        ),
        //backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          RecipeItemWidget(
              recetteModel: RecetteModel(
                  "Pizza",
                  "David Silvera",
                  "images/pizza.jpg",
                  "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
                  false,
                  17)),
          //Divider(),
          RecipeItemWidget(
              recetteModel: RecetteModel(
                  "Burger",
                  "Amadou Silvera",
                  "images/burger.jpg",
                  "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
                  false,
                  17))
          // ListTile(
          //   leading: Icon(Icons.fastfood),
          //   title: Text('Burger Maison'),
          // ),
          // ListTile(
          //   leading: Icon(Icons.fastfood),
          //   title: Text('Pizza Maison'),
          // )
        ],
      ),
    );
  }
}

class RecipeItemWidget extends StatelessWidget {
  const RecipeItemWidget({super.key, required this.recetteModel});
  final RecetteModel recetteModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: Row(
        children: [
          Image.asset(
            recetteModel.imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    recetteModel.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 143, 178, 239)),
                  ),
                ),
                Text(
                  recetteModel.user,
                  style: TextStyle(color: Colors.grey[500], fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
