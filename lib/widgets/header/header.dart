import 'package:flutter/material.dart';
import 'package:portfolio_vivek/device/desktop/header.desktop.dart';
import 'package:portfolio_vivek/device/mobile/header.mobile.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const MobileHeader();
      } else {
        return const DesktopHeader();
      }
    });
  }
}
