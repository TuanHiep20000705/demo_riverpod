import 'package:flutter/material.dart';
import '../../models/food_model.dart';

class FoodItem extends StatelessWidget {
  final FoodModel? food;
  final void Function()? onSelectFood;

  const FoodItem({super.key, this.food, this.onSelectFood});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectFood!();
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              clipBehavior: Clip.hardEdge,
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/food_v2.jpg',
                  image: food!.urlName
              ),
            ),
          ),

          Positioned(
            top: 30,
            left: 30,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  const Icon(Icons.timer, color: Colors.white, size: 25),
                  Text(
                    '${food!.duration.inMinutes} minutes',
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 120,
            right: 120,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                food!.name,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
