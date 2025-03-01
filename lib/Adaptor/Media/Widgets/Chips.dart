import 'package:dartotsu/Functions/Function.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/ScrollConfig.dart';

class ChipsWidget extends StatelessWidget {
  final List<ChipData> chips;

  const ChipsWidget({super.key, required this.chips});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ScrollConfig(
      context,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: chips.asMap().entries.map(
              (entry) {
                final index = entry.key;
                final chipData = entry.value;
                final isFirst = index == 0;
                final isLast = index == chips.length - 1;

                return Padding(
                  padding: EdgeInsets.only(
                    left: isFirst ? 24.0 : 6.5,
                    right: isLast ? 24.0 : 6.5,
                  ),
                  child: GestureDetector(
                    onLongPress: () => copyToClipboard(chipData.label),
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
                      backgroundColor: chipData.isSelected
                          ? theme.primaryContainer
                          : theme.surface,
                      onPressed: chipData.action,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        side: BorderSide(
                            color: theme.primaryContainer, width: 1.5),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}

class ChipData {
  final String label;
  final VoidCallback action;
  final bool isSelected;

  ChipData({
    required this.label,
    required this.action,
    this.isSelected = false,
  });
}
