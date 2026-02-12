import 'package:flutter/material.dart';
import '../../../core/constants/app_assets.dart';

class AuthLogoHeader extends StatelessWidget {
  const AuthLogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppAssets.splashIcon, width: 34),
        const SizedBox(width: 8),
        const Text(
          "Qent",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
