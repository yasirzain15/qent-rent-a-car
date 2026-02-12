import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/auth_text_field.dart';
import '../widgets/auth_logo_header.dart';
import '../widgets/auth_primary_button.dart';

class PhoneVerificationScreen extends StatelessWidget {
  const PhoneVerificationScreen({super.key});

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
                "Verify your phone number",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Text(
                "We have sent an SMS with a code",
                style: TextStyle(color: AppColors.textSecondary),
              ),

              const SizedBox(height: 25),
              const AuthTextField(hint: "Phone Number"),

              const SizedBox(height: 30),
              AuthPrimaryButton(text: "Continue", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
