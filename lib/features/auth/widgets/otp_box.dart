import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class OtpBox extends StatelessWidget {
  final TextEditingController controller;

  const OtpBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 60,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: AppColors.secondary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.stroke),
          ),
        ),
      ),
    );
  }
}
