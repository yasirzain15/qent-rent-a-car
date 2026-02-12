import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/app_bindings.dart';
import 'core/constants/app_colors.dart';
import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const QentApp());
}

class QentApp extends StatelessWidget {
  const QentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Qent - Rent a Car',
      debugShowCheckedModeBanner: false,

      // Global Theme
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,

        primaryColor: AppColors.primary,

        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.tertiary,
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.secondary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: AppColors.stroke),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: AppColors.stroke),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: AppColors.tertiary),
          ),
        ),
      ),

      // Initial Route
      initialRoute: AppRoutes.splash1,

      // GetX Pages
      getPages: AppPages.routes,

      // Global Bindings
      initialBinding: AppBinding(),
    );
  }
}
