import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../components/category_item.dart';
import 'category_provider.dart';

class CategoryScreen extends ConsumerWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchCategoryProvider = ref.watch(categoryScreenNotifierProvider(context).notifier);
    final readCategoryProvider = ref.read(categoryScreenNotifierProvider(context).notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Your Category')),
      body: GridView(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),
        children: watchCategoryProvider.listCategory.map((category) => CategoryItem(
          category: category,
          onClick: (category) {
            readCategoryProvider.goToFoodScreen(category);
          },
        )).toList(),
      ),
    );
  }
}
