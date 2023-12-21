import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/data/fake_data.dart';
import 'package:riverpod_demo/models/food_model.dart';

final categoriesProvider = Provider((ref) => fakeDataCategories);

final foodsProvider = Provider((ref) => fakeDataFoods);

final favoriteProvider = ChangeNotifierProvider(
        (ref) => FavoriteNotifier()
);

class FavoriteNotifier extends ChangeNotifier {
  List<FoodModel> listFood = [];

  void add(FoodModel value) {
    listFood.add(value);
    notifyListeners();
  }

  void remove(FoodModel value) {
    listFood.remove(value);
    notifyListeners();
  }
}
