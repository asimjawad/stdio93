import 'package:flutter/material.dart';

class MealLeadingIcon extends StatelessWidget {
  const MealLeadingIcon({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorScheme.primary,
        ),
        child: Icon(icon),
      ),
    );
  }
}
