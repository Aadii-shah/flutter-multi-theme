import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// Color palettes for each theme
class ThemeColors {
  static const List<Color> orangePalette = [
    Color(0xFFFFBE0B),
    Color(0xFFFB5607),
    Color(0xFFFF006E),
    Color(0xFF8338EC),
    Color(0xFF3A86FF),
  ];

  static const List<Color> redPalette = [
    Color(0xFFE63946),
    Color(0xFFFF6B6B),
    Color(0xFFEF233C),
    Color(0xFFD90429),
    Color(0xFF8D0801),
  ];

  static const List<Color> yellowPalette = [
    Color(0xFFFFD60A),
    Color(0xFFFFC300),
    Color(0xFFFFA700),
    Color(0xFFFF8700),
    Color(0xFFFF6F00),
  ];
}

/// Predefined themes based on palettes
class AppThemes {
  static ThemeData orangeTheme = FlexThemeData.light(
    colors: FlexSchemeColor(
      primary: ThemeColors.orangePalette[0],
      secondary: ThemeColors.orangePalette[1],
      appBarColor: ThemeColors.orangePalette[2],
      error: ThemeColors.orangePalette[3],
    ),
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      defaultRadius: 8.0,
    ),
  );

  static ThemeData redTheme = FlexThemeData.light(
    colors: FlexSchemeColor(
      primary: ThemeColors.redPalette[0],
      secondary: ThemeColors.redPalette[1],
      appBarColor: ThemeColors.redPalette[2],
      error: ThemeColors.redPalette[3],
    ),
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      defaultRadius: 8.0,
    ),
  );

  static ThemeData yellowTheme = FlexThemeData.light(
    colors: FlexSchemeColor(
      primary: ThemeColors.yellowPalette[0],
      secondary: ThemeColors.yellowPalette[1],
      appBarColor: ThemeColors.yellowPalette[2],
      error: ThemeColors.yellowPalette[3],
    ),
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      defaultRadius: 8.0,
    ),
  );
}
