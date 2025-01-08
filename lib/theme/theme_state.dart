import 'package:flutter/material.dart';

enum AppThemeType { orange, red, yellow }

class ThemeState {
  final ThemeData themeData;
  final AppThemeType themeType;

  ThemeState({required this.themeData, required this.themeType});
}
