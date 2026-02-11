import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qent/bindings/app_bindings.dart';
import 'core/constants/app_colors.dart';
import 'routes/app_pages.dart';

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

      // Theme using your colors
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.tertiary),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColors.textPrimary),
        ),
      ),

      // Initial route
      initialRoute: AppPages.initial,

      // GetX routes
      getPages: AppPages.routes,

      // **Attach all bindings globally**
      initialBinding: AppBinding(),
    );
  }
}
