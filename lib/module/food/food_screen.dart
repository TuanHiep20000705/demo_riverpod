import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/models/food_model.dart';
import 'package:riverpod_demo/module/food/parameter.dart';
import '../../components/food_item.dart';
import 'food_provider.dart';

class FoodScreen extends ConsumerWidget {
  final List<FoodModel> listFood;
  final String? title;

  const FoodScreen({super.key, required this.listFood, this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final readFoodProvider =
        ref.read(foodScreenNotifierProvider(Parameter(listFood: listFood, context: context)).notifier);

    return Scaffold(
      appBar: AppBar(
          title: Text(title != null ? title! : 'Favorite Foods')
      ),
      body: listFood.isNotEmpty
          ? ListView.builder(
              itemCount: listFood.length,
              itemBuilder: (context, index) {
                final food = listFood[index];
                return FoodItem(
                  food: food,
                  onSelectFood: () {
                    readFoodProvider.goToDetailScreen(food);
                  },
                );
              })
          : const Center(child: Text('There is empty')),
    );
  }
}
