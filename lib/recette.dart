import 'package:flutter/material.dart';
import 'package:flutter_test_app2/favoriteWidget.dart';
import 'package:flutter_test_app2/recetteModel.dart';
import 'package:provider/provider.dart';

class RecetteScreen extends StatelessWidget {
  // const RecetteScreen({required Key key, required this.recetteModel})
  //     : super(key: key);
  final RecetteModel recetteModel;

  const RecetteScreen({super.key, required this.recetteModel});

  @override
  Widget build(BuildContext context) {
    //button section
    Container buttonSection = Container(
      padding: const EdgeInsets.all(9.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.comment, "COMMENT"),
          _buildButtonColumn(Colors.blue, Icons.share, "SHARE"),
        ],
      ),
    );

    //button titleSection
    Widget titleSection = Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
              // Aligner tous les elements à gauche
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    recetteModel.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  padding: const EdgeInsets.only(bottom: 8),
                ),
                Text(
                  recetteModel.user,
                  style: TextStyle(color: Colors.grey[500], fontSize: 20),
                )
              ],
            )),
            FavoriteWidget()
          ],
        ));

    //description Section
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        recetteModel.description,
        style: TextStyle(fontSize: 16),
        // ne pas couper les mots en plein milieu
        softWrap: true,
      ),
    );

    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            'Mes recettes',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: 600,
                  height: 240,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                Image.asset(
                  recetteModel.imageUrl,
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ));
  }

  //button Column to group the column and its text
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Icon(icon, color: color),
          padding: const EdgeInsets.only(bottom: 8.0),
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color),
        ),
      ],
    );
  }
}
