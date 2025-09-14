import 'package:flutter/material.dart';

/// App colors used throughout the application
class AppColors {
  static const primary = Colors.deepPurple;
  static const secondary = Colors.blueAccent;
  static const background = Color(0xFF121212);
  static const cardBackground = Color(0xFF1E1E1E);
  static const textPrimary = Colors.white;
  static const textSecondary = Colors.grey;
  static const success = Colors.green;
  static const warning = Colors.amber;
  static const info = Colors.blue;
  static const error = Colors.red;
  static const divider = Color(0xFF2A2A2A);
}

/// Spacing values used for consistent margins/padding
class Spacing {
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
}

/// Text styles used throughout the app
class TextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16.0,
    color: AppColors.textPrimary,
  );

  static const TextStyle body2 = TextStyle(
    fontSize: 14.0,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14.0,
    color: AppColors.textSecondary,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    color: AppColors.textSecondary,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle subtitle2 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle button = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: AppColors.primary,
  );
}

/// Decoration styles for cards and containers
class Decorations {
  static BoxDecoration get card => BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.circular(16.0),
  );

  static BoxDecoration get roundedButton => BoxDecoration(
    color: Colors.grey[800],
    borderRadius: BorderRadius.circular(12.0),
  );
}

/// App theme class to manage all theming in one place
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  /// Light theme for the app
  static ThemeData get lightTheme => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.light,
    ),
    fontFamily: 'Inter',
    scaffoldBackgroundColor: Colors.white,
  );

  /// Dark theme for the app
  static ThemeData get darkTheme => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Inter',
  );
}
