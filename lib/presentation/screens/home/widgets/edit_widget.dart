import 'package:flutter/material.dart';

class EditWidget extends StatelessWidget {
  const EditWidget({
    super.key,
    required this.onEdit,
  });

  final void Function()? onEdit;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        InkWell(
          onTap: onEdit,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorScheme.secondary,
              ),
            ),
            child: Text(
              'Edit',
              style: textTheme.labelSmall,
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        //does nothing for now
        const Icon(
          Icons.bookmark_border,
          size: 18,
        ),
      ],
    );
  }
}
