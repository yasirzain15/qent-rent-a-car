import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qent/core/constants/app_text_styles.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_assets.dart';
import '../controller/login_controller.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/social_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                // Logo Row
                Row(
                  children: [
                    Image.asset(AppAssets.splashIcon, width: 34),
                    const SizedBox(width: 8),
                    const Text(
                      "Qent",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                // Title
                const Text(
                  "Welcome Back\nReady to hit the road.",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 30),

                // Email Field
                const AuthTextField(hint: "Email/Phone Number"),

                const SizedBox(height: 16),

                // Password Field
                const AuthTextField(
                  hint: "Password",
                  isPassword: true,
                  suffixIconAsset: "assets/icons/password_icon.png",
                ),

                const SizedBox(height: 14),

                // Remember Me & Forgot Password
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        activeColor: AppColors.tertiary,
                        onChanged: (_) => controller.toggleRememberMe(),
                      ),
                    ),
                    const Text("Remember Me"),

                    const Spacer(),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: AppColors.tertiary),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.button,
                      foregroundColor: AppColors.shade,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Login", style: AppTextStyles.robotoBody),
                  ),
                ),

                const SizedBox(height: 16),

                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.textPrimary,
                      backgroundColor: AppColors.secondary,
                      side: BorderSide(color: AppColors.icon),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Sign up",
                      style: AppTextStyles.robotoBody,
                    ),
                  ),
                ),

                const SizedBox(height: 26),

                // Divider
                Row(
                  children: [
                    Expanded(child: Divider(color: AppColors.stroke)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or",
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: AppColors.stroke)),
                  ],
                ),

                const SizedBox(height: 20),

                // Apple Pay
                SocialButton(
                  label: "Apple Pay",
                  icon: Icon(Icons.apple, color: AppColors.textPrimary),
                ),

                const SizedBox(height: 18),

                // Google Pay
                SocialButton(
                  label: "Google Pay",
                  icon: Icon(Icons.g_mobiledata, color: AppColors.textPrimary),
                ),

                const SizedBox(height: 40),

                // Footer
                Center(
                  child: Text(
                    "Don't have an account? Sign Up.",
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
