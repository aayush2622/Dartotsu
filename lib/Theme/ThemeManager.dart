import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/DropdownMenu.dart';
import 'Colors.dart';
import 'ThemeProvider.dart';
import 'Themes/fromCode.dart';
import 'Themes/blue.dart';
import 'Themes/green.dart';
import 'Themes/lavender.dart';
import 'Themes/material.dart';
import 'Themes/ocean.dart';
import 'Themes/oriax.dart';
import 'Themes/pink.dart';
import 'Themes/purple.dart';
import 'Themes/red.dart';
import 'Themes/saikou.dart';

ThemeData getTheme(ColorScheme? material,ThemeNotifier themeManager) {
  final isOled = themeManager.isOled;
  final theme = themeManager.theme;
  final useMaterial= themeManager.useMaterialYou;
  final useCustomColor = themeManager.useCustomColor;
  final customColor = themeManager.customColor;
  final isDarkMode = themeManager.isDarkMode;
  ThemeData baseTheme;
  switch (theme) {
    case 'blue':
      baseTheme = isDarkMode ? cyanDarkTheme : cyanLightTheme;
      break;
    case 'green':
      baseTheme = isDarkMode ? greenDarkTheme : greenLightTheme;
      break;
    case 'purple':
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
      break;
    case 'pink':
      baseTheme = isDarkMode ? pinkDarkTheme : pinkLightTheme;
      break;
    case 'oriax':
      baseTheme = isDarkMode ? oriaxDarkTheme : oriaxLightTheme;
      break;
    case 'saikou':
      baseTheme = isDarkMode ? saikouDarkTheme : saikouLightTheme;
      break;
    case 'red':
      baseTheme = isDarkMode ? redDarkTheme : redLightTheme;
      break;
    case 'lavender':
      baseTheme = isDarkMode ? lavenderDarkTheme : lavenderLightTheme;
      break;
    case 'ocean':
      baseTheme = isDarkMode ? oceanDarkTheme : oceanLightTheme;
      break;
  /*case AppTheme.monochrome:
      baseTheme = isDarkMode ? monochromeDarkTheme : monochromeLightTheme;
      break;*/
    default:
      baseTheme = isDarkMode ? purpleDarkTheme : purpleLightTheme;
      break;
  }
  if (useMaterial && material != null) {
    baseTheme = isDarkMode ? materialThemeDark(material) : materialThemeLight(material);
  }
  if (useCustomColor) {
    baseTheme = isDarkMode ? getCustomDarkTheme(customColor) : getCustomLightTheme(customColor);
  }
  return baseTheme.copyWith(
    scaffoldBackgroundColor: isOled ? Colors.black : baseTheme.scaffoldBackgroundColor,
    colorScheme: baseTheme.colorScheme.copyWith(
      surface: isOled ? Colors.black : baseTheme.colorScheme.surface,
      surfaceContainerHighest: isOled ? greyNavDark : baseTheme.colorScheme.surfaceContainerHighest,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith<Color>((states) {
        return states.contains(WidgetState.selected)
            ? baseTheme.colorScheme.surface
            : baseTheme.colorScheme.primary;
      }),
      trackColor: WidgetStateProperty.resolveWith<Color>((states) {
        return states.contains(WidgetState.selected)
            ? baseTheme.colorScheme.primary
            : baseTheme.colorScheme.surfaceContainerHighest;
      }),
      overlayColor: WidgetStateProperty.all<Color>(
        baseTheme.colorScheme.primary.withOpacity(0.2),
      ),
    ),
  );

}

class ThemeDropdown extends StatelessWidget {
  const ThemeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeOptions = [
      'blue',
      'green',
      'purple',
      'pink',
      'oriax',
      'saikou',
      'red',
      'lavender',
      'ocean'
    ];
    return buildDropdownMenu(
      currentValue: themeNotifier.theme.toUpperCase(),
      options: themeOptions.map((e) => e.toUpperCase()).toList(),
      onChanged: (String newValue) {
        themeNotifier.setTheme(newValue.toLowerCase());
      },
      prefixIcon: Icons.color_lens,
    );
  }
}

// TODO Implement the DNS dropdown
class DnsDropdown extends StatelessWidget {
  const DnsDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final dnsOptions = [
      'None',
      'Cloudflare',
      'Google',
      'AdGuard',
      'Quad9',
      'AliDNS',
      'DNSPod',
      '360',
      'Quad101',
      'Mullvad',
      'Controld',
      'Njalla',
      'Shecan',
      'Libre'
    ];

    final currentDnsProvider = dnsOptions[0];

    return buildDropdownMenu(
      currentValue: currentDnsProvider,
      options: dnsOptions,
      onChanged: (String newValue) {
      },
      prefixIcon: Icons.dns,
    );
  }
}