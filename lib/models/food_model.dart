import 'dart:math';

class FoodModel {
  int? id;
  String name;
  String urlName;
  Duration duration;
  Complexity complexity;
  List<String> ingredients = <String>[];
  int categoriId;
  String? steps;
  bool isGluten = false;
  bool isLactose = false;
  bool isVegetarian = false;
  bool isVegan = false;

  FoodModel(
      {this.id,
        required this.name,
        required this.urlName,
        required this.duration,
        required this.complexity,
        required this.ingredients,
        required this.categoriId,
        this.steps,
        required this.isGluten,
        required this.isLactose,
        required this.isVegetarian,
        required this.isVegan
      }){
    id = Random().nextInt(1000);
  }
}

enum Complexity {
  Simple,
  Medium,
  Hard
}