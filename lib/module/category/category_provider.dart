import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/category.dart';
import '../../models/food_model.dart';
import '../../riverpods/providers.dart';
import '../food/food_screen.dart';

final categoryScreenNotifierProvider =
StateNotifierProvider.family((ref, BuildContext context) {
  final categories = ref.watch(categoriesProvider);
  final foods = ref.watch(foodsProvider);
  return CategoryScreenNotifier(categories, foods, context);
});

class CategoryScreenNotifier extends StateNotifier {
  final List<CategoryModel> listCategory;
  final List<FoodModel> listFood;
  final BuildContext context;

  CategoryScreenNotifier(this.listCategory, this.listFood, this.context)
      : super([]);

  void goToFoodScreen(CategoryModel category) {
    final foods = listFood.where((eleFood) => eleFood.categoriId == category.id).toList();
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FoodScreen(listFood: foods, title: category.content)));
  }
}