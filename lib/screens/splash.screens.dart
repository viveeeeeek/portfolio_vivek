import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircularProgressIndicator(
          color: Color(0xFF0BDA74),
        )
      ],
    );
  }
}
