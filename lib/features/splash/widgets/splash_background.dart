import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  final String imagePath;
  final Widget child;

  const SplashBackground({
    super.key,
    required this.imagePath,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.asset(imagePath, fit: BoxFit.cover)),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.8),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
