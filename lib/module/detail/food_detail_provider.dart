import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/models/food_model.dart';
import 'package:riverpod_demo/riverpods/providers.dart';

final foodDetailScreenNotifierProvider =
    StateNotifierProvider.family((ref, BuildContext context) {
  return FoodDetailNotifier(ref, context);
});

class FoodDetailNotifier extends StateNotifier {
  final Ref ref;
  final BuildContext context;

  FoodDetailNotifier(this.ref, this.context) : super([]);

  void likeFood(FoodModel foodDetail) {
    final readFavoriteProvider = ref.read(favoriteProvider.notifier);

    final wasAdded = readFavoriteProvider.listFood
        .where((eleFood) => eleFood.id == foodDetail.id)
        .isNotEmpty;
    if (wasAdded) {
      readFavoriteProvider.remove(foodDetail);
    } else {
      readFavoriteProvider.add(foodDetail);
    }
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:
            Text(wasAdded ? 'Meal removed.' : 'Meal added as a favorite.')));
  }
}
