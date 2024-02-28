import 'package:flutter/material.dart';
import 'package:stdio93/core/models/meal_model.dart';
import 'package:stdio93/presentation/screens/home/widgets/meal_item_widget.dart';

class MealTotalCaloriesWidget extends StatelessWidget {
  const MealTotalCaloriesWidget({
    super.key,
    required this.isEdit,
    required this.mealItems,
    required this.onRemove,
  });

  final bool isEdit;
  final List<MealItem>? mealItems;

  final void Function(int) onRemove;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(2),
            topLeft: Radius.circular(2),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: mealItems!.length,
              itemBuilder: (context, index) {
                return MealItemWidget(
                  mealItem: mealItems![index],
                  isEdit: isEdit,
                  onRemove: (itemIndex) => onRemove(itemIndex),
                  itemIndex: index,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: textTheme.bodySmall!.copyWith(color: Colors.green),
                  ),
                  Row(
                    children: [
                      Text(
                        '${calculateTotal(mealItems!)} Cals',
                        style:
                            textTheme.bodySmall!.copyWith(color: Colors.green),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      //iconSize
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int calculateTotal(List<MealItem> items) {
    int cal = 0;
    for (var item in items) {
      cal += item.calories;
    }
    return cal;
  }
}
