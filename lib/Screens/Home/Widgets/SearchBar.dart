import 'package:dartotsu/Functions/Extensions.dart';
import 'package:flutter/material.dart';

import '../../../Widgets/CustomBottomDialog.dart';
import '../../Settings/SettingsBottomSheet.dart';
import 'AvtarWidget.dart';

class MediaSearchBar extends StatelessWidget {
  final String title;

  const MediaSearchBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(32, 36.statusBar(), 32, 24),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: AbsorbPointer(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: title,
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                      color: theme.onSurface,
                    ),
                    suffixIcon: Icon(Icons.search, color: theme.onSurface),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(
                        color: theme.primaryContainer,
                        width: 1.0,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: 0.2),
                  ),
                  readOnly: true,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            child: const AvatarWidget(icon: Icons.settings),
            onTap: () =>
                showCustomBottomDialog(context, const SettingsBottomSheet()),
          )
        ],
      ),
    );
  }
}
