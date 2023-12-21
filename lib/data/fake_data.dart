import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/food_model.dart';

// fake category
List<CategoryModel> fakeDataCategories = [
  CategoryModel(id: 1, content: 'Janpanese\'s Foods', color: Colors.deepOrange),
  CategoryModel(id: 2, content: 'American\'s Foods', color: Colors.teal),
  CategoryModel(id: 3, content: 'Italian\'s Foods',color: Colors.blueAccent),
  CategoryModel(id: 4, content: 'Humbugers',color: Colors.cyanAccent),
  CategoryModel(id: 5, content: 'Milk & Yogurt',color: Colors.deepPurple),
  CategoryModel(id: 6, content: 'Vegetables',color: Colors.green),
  CategoryModel(id: 7, content: 'Fruits',color: Colors.redAccent)
];

// fake food
List<FoodModel> fakeDataFoods = [
  FoodModel(
      name: "Sushi",
      urlName: "https://media.istockphoto.com/id/1053854126/photo/all-you-can-eat-sushi.jpg?s=612x612&w=0&k=20&c=qqPJBYcxR0fgmzIFj_k2V6Mbo12hBBCucs1i5HcGYA0=",
      duration: const Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: ['sushi', 'nori'],
      categoriId: 1,
      steps: "Bước 1: Trộn đường, giấm làm sushi vào cơm. Bước 2: Cắt cá hồi, dưa chuột thành các dải dài. Bước 3: Đánh tan trứng, thêm ít muối, tiêu khuấy đều rồi tráng mỏng. Bước 4: Đặt rong biển lên mành cuốn, giàn cơm lên, sau đó là 1 miếng trứng, 1 miếng cá hồi ở chính giữa. Bước 1: Trộn đường, giấm làm sushi vào cơm. Bước 2: Cắt cá hồi, dưa chuột thành các dải dài. Bước 3: Đánh tan trứng, thêm ít muối, tiêu khuấy đều rồi tráng mỏng. Bước 4: Đặt rong biển lên mành cuốn, giàn cơm lên, sau đó là 1 miếng trứng, 1 miếng cá hồi ở chính giữa.",
      isGluten: true,
      isVegetarian: false,
      isVegan: false,
      isLactose: true
  ),
  FoodModel(
      name: "Tokoyaki",
      urlName: "https://cookingwithdog.com/wp-content/uploads/2017/02/takoyaki-ebiyaki-00.jpg",
      duration: const Duration(minutes: 40),
      complexity: Complexity.Medium,
      ingredients: ['Bach tuoc', 'Bot mi'],
      categoriId: 1,
      isGluten: false,
      isVegetarian: true,
      isVegan: false,
      isLactose: false
  ),
  FoodModel(
      name: "Ramen",
      urlName: "https://www.justonecookbook.com/wp-content/uploads/2023/04/Spicy-Shoyu-Ramen-8055-I.jpg",
      duration: const Duration(minutes: 30),
      complexity: Complexity.Medium,
      ingredients: ['Mi', 'Mang'],
      categoriId: 1,
      isGluten: true,
      isVegetarian: false,
      isVegan: false,
      isLactose: false
  ),
  FoodModel(
      name: "Onigiri",
      urlName: "https://img-global.cpcdn.com/recipes/cf0eba59c999a068/1200x630cq70/photo.jpg",
      duration: const Duration(minutes: 15),
      complexity: Complexity.Simple,
      ingredients: ['Com', 'Rong bien'],
      categoriId: 1,
      isGluten: false,
      isVegetarian: true,
      isVegan: true,
      isLactose: false
  ),
  FoodModel(
      name: "pizza",
      urlName: "https://img.freepik.com/free-photo/top-view-pepperoni-pizza-with-mushroom-sausages-bell-pepper-olive-corn-black-wooden_141793-2158.jpg?w=2000",
      duration: const Duration(minutes: 15),
      complexity: Complexity.Medium,
      ingredients: ['pizza', 'soup'],
      categoriId: 2,
      isGluten: false,
      isVegetarian: false,
      isVegan: false,
      isLactose: true
  ),
  FoodModel(
      name: "pasta",
      urlName: "https://media.istockphoto.com/id/1356961232/photo/spaghetti-with-meatballs-and-tomato-sauce-on-a-stone-background.webp?b=1&s=170667a&w=0&k=20&c=XXbPBlvr5P3KxtdFHaHKu9zB6qWW3nL9c4cxqkwuVfo=",
      duration: const Duration(minutes: 35),
      complexity: Complexity.Hard,
      ingredients: ['pasta', 'tomato'],
      categoriId: 4,
      isGluten: false,
      isVegetarian: false,
      isVegan: false,
      isLactose: true
  ),
];