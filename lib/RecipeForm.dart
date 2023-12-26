import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test_app2/recetteModel.dart';

class RecipeForm extends StatefulWidget {
  const RecipeForm({super.key});

  @override
  State<RecipeForm> createState() => _RecipeFormState();
}

class _RecipeFormState extends State<RecipeForm> {
  //for Validation
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final userController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    userController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle Recette'),
      ),
      body: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter title';
                    }
                    return null;
                  },
                  //initialValue: AutofillHints.newUsername,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 5,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter description';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: userController,
                  decoration: InputDecoration(
                      labelText: 'Name of User',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter user name';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        RecetteModel recetteModel = RecetteModel(
                            titleController.value.text,
                            userController.value.text,
                            'imageUrl',
                            descriptionController.value.text,
                            true,
                            Random().nextInt(100));

                        //save recetteModel through API
                      }
                    },
                    child: Text('Save')),
              )
            ],
          )),
    );
  }
}
