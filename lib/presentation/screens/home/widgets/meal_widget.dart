import 'package:flutter/material.dart';
import 'package:stdio93/core/models/meal_model.dart';
import 'package:stdio93/presentation/common/widgets/add_widget.dart';
import 'package:stdio93/presentation/screens/home/widgets/meal_leading_icon.dart';
import 'package:stdio93/presentation/screens/home/widgets/meal_title_and_edit_widget.dart';
import 'package:stdio93/presentation/screens/home/widgets/meal_total_widget.dart';

class MealWidget extends StatelessWidget {
  const MealWidget({
    super.key,
    required this.mealData,
    required this.onAdd,
    required this.onEdit,
    required this.onSave,
    required this.onRemove,
  });

  final MealModel mealData;

  final void Function() onAdd, onEdit, onSave;
  final void Function(int) onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8, bottom: 8, right: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MealLeadingIcon(
                    icon: mealData.icon,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  MealTitleAndEditWidget(
                    title: mealData.title,
                    isEmpty: mealData.mealItems!.isEmpty,
                    isEdit: mealData.isEdit,
                    onEdit: onEdit,
                    onSave: onSave,
                  ),
                ],
              ),
              AddWidget(
                onAdd: onAdd,
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          mealData.mealItems!.isEmpty
              ? const SizedBox.shrink()
              : MealTotalCaloriesWidget(
                  mealItems: mealData.mealItems,
                  isEdit: mealData.isEdit,
                  onRemove: (itemIndex) => onRemove(itemIndex),
                ),
        ],
      ),
    );
  }
}
