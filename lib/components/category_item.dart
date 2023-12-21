import 'package:flutter/material.dart';
import '../../models/category.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel? category;
  final Function(CategoryModel categoryModel)? onClick;

  const CategoryItem({super.key, this.category, this.onClick});

  @override
  Widget build(BuildContext context) {
    final content = category!.content ?? '';

    return InkWell(
      onTap: () {
        onClick!(category!);
      },
      child: Container(
        decoration: BoxDecoration(
          color: category!.color,
          borderRadius: BorderRadius.circular(5)
        ),
        alignment: Alignment.center,
        child: Text(content, style: const TextStyle(fontSize: 14))
      ),
    );
  }
}
