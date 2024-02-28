import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stdio93/core/models/meal_model.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider();

  static HomeProvider instance = HomeProvider._();

  HomeProvider._();

  final List<MealItem> mealList = [
    MealItem(name: 'Spicy Bacon Cheese Toast', calories: 312),
    MealItem(name: 'Biryani', calories: 452),
    MealItem(name: 'Tacos', calories: 876),
    MealItem(name: 'Mix Fruits', calories: 200),
    MealItem(name: 'Steak', calories: 1200),
    MealItem(name: 'Pudding', calories: 500),
  ];
  final List<MealModel> meals = [
    MealModel(
      icon: Icons.sunny_snowing,
      title: 'Meal One',
      mealItems: [
        MealItem(name: 'Spicy Bacon Cheese Toast', calories: 312),
        MealItem(name: 'Biryani', calories: 452),
        MealItem(name: 'Tacos', calories: 876),
      ],
    ),
    MealModel(
      icon: Icons.copy,
      title: 'Meal Two',
      mealItems: [],
    ),
    MealModel(
      icon: Icons.sunny,
      title: 'Meal Three',
      mealItems: [],
    ),
    MealModel(
      icon: Icons.rice_bowl_sharp,
      title: 'Meal Four',
      mealItems: [],
    ),
    MealModel(
      icon: Icons.nightlight_rounded,
      title: 'Meal Five',
      mealItems: [],
    ),
    MealModel(
      icon: Icons.nights_stay_sharp,
      title: 'Meal Six',
      mealItems: [],
    ),
  ];

  void addMeal(int index) {
    int randomNumber = Random().nextInt(mealList.length);
    meals[index].mealItems!.add(mealList[randomNumber]);
    notify();
  }

  void enableEditMeal(int index) {
    meals[index].isEdit = true;
    notify();
  }

  void disableEditMeal(int index) {
    meals[index].isEdit = false;
    notify();
  }

  void removeItemFromMeal(int index, int itemIndex) {
    meals[index].mealItems!.removeAt(itemIndex);
    //disable edit mode for a meal plan which is empty
    if (meals[index].mealItems!.isEmpty) {
      disableEditMeal(index);
    }
    notify();
  }

  void notify() => notifyListeners();
}

final homeProvider = ChangeNotifierProvider<HomeProvider>((ref) {
  return HomeProvider();
});
