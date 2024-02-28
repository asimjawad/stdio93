import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stdio93/application/providers/home_provider.dart';
import 'package:stdio93/presentation/screens/home/widgets/meal_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorTheme = Theme.of(context).colorScheme;
    final provider = ref.read(homeProvider);
    final meadData = ref.watch(homeProvider).meals;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
        titleSpacing: 16,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: colorTheme.secondary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: colorTheme.secondary,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: meadData.length,
          itemBuilder: (context, index) => MealWidget(
            mealData: meadData[index],
            onAdd: () => provider.addMeal(index),
            onEdit: () => provider.enableEditMeal(index),
            onSave: () => provider.disableEditMeal(index),
            onRemove: (itemIndex) => provider.removeItemFromMeal(index, itemIndex ),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 4),
        ),
      ),
    );
  }
}
