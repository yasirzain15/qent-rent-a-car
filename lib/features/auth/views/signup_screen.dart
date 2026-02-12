import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/auth_logo_header.dart';
import '../widgets/auth_primary_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthLogoHeader(),
              const SizedBox(height: 40),

              const Text(
                "Sign Up",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),

              const AuthTextField(hint: "Full Name"),
              const SizedBox(height: 14),

              const AuthTextField(hint: "Email Address"),
              const SizedBox(height: 14),

              const AuthTextField(
                hint: "Password",
                isPassword: true,
                suffixIconAsset: "assets/icons/password_icon.png",
              ),
              const SizedBox(height: 14),

              const AuthTextField(hint: "Country"),
              const SizedBox(height: 25),

              AuthPrimaryButton(text: "Sign Up", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
