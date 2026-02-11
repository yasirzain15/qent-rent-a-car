import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class SocialButton extends StatelessWidget {
  final String label;
  final Widget icon;

  const SocialButton({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49,
      width: 390,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.stroke),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
