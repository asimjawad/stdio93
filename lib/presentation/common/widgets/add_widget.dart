import 'package:flutter/material.dart';
import 'package:stdio93/application/theme/app_colors.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({
    super.key,
    required this.onAdd,
  });

  final void Function() onAdd;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onAdd,
      child: Container(
        padding: const EdgeInsets.only(left: 3, bottom: 3),
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(12),
            topRight: Radius.circular(16),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          decoration: const BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(3),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(3),
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
    );
  }
}
