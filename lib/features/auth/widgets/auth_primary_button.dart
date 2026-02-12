import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class AuthPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const AuthPrimaryButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.button,
          foregroundColor: AppColors.shade,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: onTap,
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
