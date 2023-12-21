import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/models/food_model.dart';
import 'package:riverpod_demo/module/detail/food_detail_provider.dart';

import '../../riverpods/providers.dart';

class FoodDetailScreen extends StatelessWidget {
  final FoodModel foodDetail;

  const FoodDetailScreen({super.key, required this.foodDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Food'),
        actions: [
          Consumer(builder: (ctx, ref, _) {
            final readFoodDetailProvider =
                ref.read(foodDetailScreenNotifierProvider(ctx).notifier);
            final watchFavoriteProvider = ref.watch(favoriteProvider);
            return IconButton(
                onPressed: () {
                  readFoodDetailProvider.likeFood(foodDetail);
                },
                icon: watchFavoriteProvider.listFood
                        .where((eleFood) => eleFood.id == foodDetail.id)
                        .isNotEmpty
                    ? const Icon(Icons.star)
                    : const Icon(Icons.star_border));
          })
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          FadeInImage.assetNetwork(
              placeholder: 'assets/images/food_v2.jpg',
              image: foodDetail.urlName),
          const Text('Ingredients',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          for (final ingredient in foodDetail.ingredients)
            Text(ingredient, style: const TextStyle(fontSize: 20)),
          const Text('Steps',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          if (foodDetail.steps != null)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child:
                  Text(foodDetail.steps!, style: const TextStyle(fontSize: 20)),
            )
        ],
      ),
    );
  }
}
