import 'package:flutter/material.dart';
import 'package:stdio93/core/models/meal_model.dart';

class MealItemWidget extends StatelessWidget {
  const MealItemWidget({
    super.key,
    required this.isEdit,
    required this.mealItem,
    required this.onRemove,
    required this.itemIndex,
  });

  final bool isEdit;
  final int itemIndex;
  final MealItem mealItem;

  final void Function(int) onRemove;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        //provide more command over the texts compared to ListTile
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              mealItem.name,
              style: textTheme.bodySmall,
            ),
            Row(
              children: [
                Text(
                  '${mealItem.calories} Cals',
                  style: textTheme.bodySmall!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 12,
                ),
                isEdit
                    ? InkWell(
                        onTap: () => onRemove(itemIndex),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red.withOpacity(0.6),
                          ),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.arrow_circle_right_rounded,
                        size: 16,
                      ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        const Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
