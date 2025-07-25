import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.primaryYellow,
    fontFamily: 'Roboto',
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: AppColors.darkText,
      ),
      titleMedium: TextStyle(fontSize: 18, color: AppColors.darkText),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.greyText),
    ),
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryYellow,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.darkText),
    ),
    iconTheme: const IconThemeData(color: AppColors.darkText),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryYellow,
        foregroundColor: AppColors.darkText,
        textStyle: const TextStyle(fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
  );
}
