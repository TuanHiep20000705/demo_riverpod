import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/another_demo/state/test_state_screen.dart';
import 'package:riverpod_demo/models/food_model.dart';
import 'package:riverpod_demo/riverpods/providers.dart';
import 'category/category_screen.dart';
import 'food/food_screen.dart';

class TabScreens extends ConsumerStatefulWidget {
  const TabScreens({super.key});

  @override
  ConsumerState<TabScreens> createState() => _TabScreensState();
}

class _TabScreensState extends ConsumerState<TabScreens> {
  int _selectedPage = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoryScreen();
    if (_selectedPage == 1) {
      List<FoodModel> foods = ref.watch(favoriteProvider).listFood;
      activePage = FoodScreen(listFood: foods);
    } else if (_selectedPage == 2) {
      activePage = const TestStateScreen();
    }

    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.set_meal), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Another')
        ],
        currentIndex: _selectedPage,
      ),
    );
  }
}
