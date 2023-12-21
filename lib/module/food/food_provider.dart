import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/module/food/parameter.dart';
import '../../models/food_model.dart';
import '../detail/food_detail_screen.dart';

final foodScreenNotifierProvider =
    StateNotifierProvider.family((ref, Parameter param) {
  return FoodScreenNotifier(param.listFood, param.context);
});

class FoodScreenNotifier extends StateNotifier {
  final List<FoodModel> listFood;
  final BuildContext context;

  FoodScreenNotifier(this.listFood, this.context) : super([]);

  void goToDetailScreen(FoodModel foodModel) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FoodDetailScreen(foodDetail: foodModel)));
  }
}
