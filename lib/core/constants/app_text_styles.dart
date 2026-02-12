import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const TextTheme textTheme = TextTheme(
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.background),

    bodyMedium: TextStyle(fontSize: 14, color: AppColors.textPrimary),

    titleLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: AppColors.textPrimary,
    ),
  );

  static const robotoBody = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.background,
  );

  static const robotoTitle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
}
