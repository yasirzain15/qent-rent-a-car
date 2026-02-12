import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/auth_logo_header.dart';
import '../widgets/auth_primary_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthLogoHeader(),
              const SizedBox(height: 40),

              const Text(
                "Reset your password",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Text(
                "Enter the email address associated with your account.",
                style: TextStyle(color: AppColors.textSecondary),
              ),

              const SizedBox(height: 20),
              const AuthTextField(hint: "Email"),

              const SizedBox(height: 30),
              AuthPrimaryButton(text: "Continue", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
