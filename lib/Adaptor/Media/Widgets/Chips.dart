import 'package:flutter/material.dart';

import '../../../Widgets/ScrollConfig.dart';

class ChipsWidget extends StatelessWidget {
  final List<ChipData> chips;

  const ChipsWidget({super.key, required this.chips});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ScrollConfig(context,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: chips.map((chipData) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: ActionChip(
                    label: Text(
                      chipData.label,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: theme.onSurface,
                      ),
                    ),
                    onPressed: chipData.action,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(color: theme.primaryContainer)),
                  ),
                );
              }).toList(),
            ),
          ),
        ));
  }
}

class ChipData {
  final String label;
  final VoidCallback action;

  ChipData({
    required this.label,
    required this.action,
  });
}