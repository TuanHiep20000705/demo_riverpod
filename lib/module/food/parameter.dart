import 'package:flutter/cupertino.dart';

import '../../models/food_model.dart';

class Parameter {
  final List<FoodModel> listFood;
  final BuildContext context;

  const Parameter({required this.listFood, required this.context});
}