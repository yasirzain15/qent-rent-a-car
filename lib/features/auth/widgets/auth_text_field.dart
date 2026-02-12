import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';

class AuthTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final String? suffixIconAsset;

  const AuthTextField({
    super.key,
    required this.hint,
    this.isPassword = false,
    this.suffixIconAsset,
  });

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: AppColors.textSecondary),

        filled: true,
        fillColor: AppColors.secondary,

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),

        // Suffix Asset Icon (Tap to Toggle Password)
        suffixIcon: widget.suffixIconAsset != null
            ? GestureDetector(
                onTap: widget.isPassword
                    ? () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      }
                    : null,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    widget.suffixIconAsset!,
                    width: 22,
                    height: 22,
                  ),
                ),
              )
            : null,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.stroke),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.stroke),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.icon),
        ),
      ),
    );
  }
}
