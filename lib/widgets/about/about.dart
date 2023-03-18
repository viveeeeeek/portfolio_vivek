import 'package:flutter/material.dart';
import 'package:portfolio_vivek/device/mobile/about.mobile.dart';
import 'package:portfolio_vivek/device/desktop/about.desktop.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const MobileAbout();
      } else {
        return const DesktopAbout();
      }
    });
  }
}
