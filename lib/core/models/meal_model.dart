import 'package:flutter/cupertino.dart';

class MealModel {
  MealModel({
    required this.icon,
    required this.title,
    this.isEdit = false,
    this.mealItems,
  });

  bool isEdit;
  final String title;
  final IconData icon;
  List<MealItem>? mealItems;
}

class MealItem {
  MealItem({
    required this.name,
    required this.calories,
  });

  final String name;
  final int calories;
}
