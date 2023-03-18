import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      pinned: true,
      expandedHeight: 400.0,
      elevation: 0, // Add this property to remove the shadow effect
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            FractionallySizedBox(
              widthFactor: 1.0, // Add this property to fill the available width
              child: Image.asset(
                'assets/person.png',
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.transparent
                  ],
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          'VivekS.',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
    );
  }
}
