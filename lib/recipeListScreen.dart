import 'package:flutter/material.dart';
import 'package:flutter_test_app2/recette.dart';
import 'package:flutter_test_app2/recetteModel.dart';

class ReccipeListScreen extends StatelessWidget {
  //const ReccipeListScreen({super.key});
  final List<RecetteModel> recipeList = [
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
        "Ousmane Silvera",
        "images/chocolat.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Beurre",
        "Paul Silvera",
        "images/beurre.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Lait",
        "Christian Silvera",
        "images/lait.jpg",
        "Je suis entrain de coder. Le codage est une recommandation qui me fait vraiment plaisir",
        false,
        17),
    RecetteModel(
        "Café",
        "Omar Silvera",
        "images/café.JPG",
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
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (context, index) {
          //return RecipeItemWidget(recetteModel: recipeList[index]);
          return Dismissible(
              key: Key(recipeList[index].title),
              onDismissed: (direction) {
                SetState() {
                  recipeList.removeAt(index);
                }

                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${recipeList[index].title} supprimé")));
              },
              // background: Container(
              //   color: Colors.red,
              // ),
              child: RecipeItemWidget(recetteModel: recipeList[index]));
        },
      ),
    );
  }
}

class RecipeItemWidget extends StatelessWidget {
  const RecipeItemWidget({super.key, required this.recetteModel});
  final RecetteModel recetteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RecetteScreen(recetteModel: recetteModel)));
      },
      child: Card(
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
      ),
    );
  }
}
