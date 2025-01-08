import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_theme.dart';
import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: AppThemes.orangeTheme, themeType: AppThemeType.orange)) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    String? themeString = prefs.getString('theme') ?? 'orange';

    switch (themeString) {
      case 'orange':
        emit(ThemeState(themeData: AppThemes.orangeTheme, themeType: AppThemeType.orange));
        break;
      case 'red':
        emit(ThemeState(themeData: AppThemes.redTheme, themeType: AppThemeType.red));
        break;
      case 'yellow':
        emit(ThemeState(themeData: AppThemes.yellowTheme, themeType: AppThemeType.yellow));
        break;
    }
  }

  Future<void> changeTheme(AppThemeType themeType) async {
    final prefs = await SharedPreferences.getInstance();
    switch (themeType) {
      case AppThemeType.orange:
        prefs.setString('theme', 'orange');
        emit(ThemeState(themeData: AppThemes.orangeTheme, themeType: AppThemeType.orange));
        break;
      case AppThemeType.red:
        prefs.setString('theme', 'red');
        emit(ThemeState(themeData: AppThemes.redTheme, themeType: AppThemeType.red));
        break;
      case AppThemeType.yellow:
        prefs.setString('theme', 'yellow');
        emit(ThemeState(themeData: AppThemes.yellowTheme, themeType: AppThemeType.yellow));
        break;
    }
  }
}
