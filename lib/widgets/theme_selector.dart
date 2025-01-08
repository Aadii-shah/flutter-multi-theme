import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme/theme_cubit.dart';
import '../theme/theme_state.dart';

class ThemeSelector extends StatelessWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    final currentThemeType = themeCubit.state.themeType;

    // Helper function to check selected theme
    bool isSelected(AppThemeType type) => currentThemeType == type;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Orange Theme ListTile
        ListTile(
          title: const Text('Orange Theme'),
          tileColor: isSelected(AppThemeType.orange) ? Theme.of(context).colorScheme.primary.withOpacity(0.2) : null,
          leading: Icon(
            Icons.circle,
            color: isSelected(AppThemeType.orange) ? Theme.of(context).colorScheme.primary : Colors.grey,
          ),
          onTap: () => themeCubit.changeTheme(AppThemeType.orange),
        ),

        // Red Theme ListTile
        ListTile(
          title: const Text('Red Theme'),
          tileColor: isSelected(AppThemeType.red) ? Theme.of(context).colorScheme.primary.withOpacity(0.2) : null,
          leading: Icon(
            Icons.circle,
            color: isSelected(AppThemeType.red) ? Theme.of(context).colorScheme.primary : Colors.grey,
          ),
          onTap: () => themeCubit.changeTheme(AppThemeType.red),
        ),

        // Yellow Theme ListTile
        ListTile(
          title: const Text('Yellow Theme'),
          tileColor: isSelected(AppThemeType.yellow) ? Theme.of(context).colorScheme.primary.withOpacity(0.2) : null,
          leading: Icon(
            Icons.circle,
            color: isSelected(AppThemeType.yellow) ? Theme.of(context).colorScheme.primary : Colors.grey,
          ),
          onTap: () => themeCubit.changeTheme(AppThemeType.yellow),
        ),
      ],
    );
  }
}
