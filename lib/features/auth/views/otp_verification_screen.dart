import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/auth_logo_header.dart';
import '../widgets/auth_primary_button.dart';
import '../widgets/otp_box.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  final controllers = List.generate(4, (_) => TextEditingController());

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
                "Enter verification code",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              Text(
                "We have sent a code to your phone",
                style: TextStyle(color: AppColors.textSecondary),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controllers
                    .map((c) => OtpBox(controller: c))
                    .toList(),
              ),

              const SizedBox(height: 30),
              AuthPrimaryButton(text: "Continue", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
