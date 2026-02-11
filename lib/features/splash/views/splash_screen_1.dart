import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qent/core/constants/app_text_styles.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../controller/splash_controller.dart';
import '../widgets/splash_background.dart';

class SplashScreen1 extends StatelessWidget {
  SplashScreen1({super.key});

  final controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SplashBackground(
      imagePath: AppAssets.splashImage1,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Icon
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.white,
              child: Image.asset(AppAssets.splashIcon, width: 26),
            ),

            const Spacer(),

            // Title
            Text(
              "Welcome to\nQent",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            // Button
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.button,
                  foregroundColor: AppColors.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: controller.goToNextSplash,
                child: Text("Get Started", style: AppTextStyles.robotoBody),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
