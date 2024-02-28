import 'package:flutter/material.dart';
import 'package:stdio93/presentation/screens/home/widgets/edit_widget.dart';

class MealTitleAndEditWidget extends StatelessWidget {
  const MealTitleAndEditWidget({
    super.key,
    required this.title,
    required this.isEdit,
    required this.onEdit,
    required this.onSave,
    required this.isEmpty,
  });

  final String title;
  final bool isEmpty, isEdit;

  final void Function() onEdit, onSave;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.titleSmall,
        ),
        const SizedBox(
          height: 4,
        ),
        isEmpty
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'No Products',
                  style: textTheme.labelSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            : InkWell(
                onTap: onSave,
                child: isEdit
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'save',
                          style: textTheme.labelSmall!
                              .copyWith(color: Colors.green),
                        ),
                      )
                    : EditWidget(
                        onEdit: onEdit,
                      ),
              ),
      ],
    );
  }
}
