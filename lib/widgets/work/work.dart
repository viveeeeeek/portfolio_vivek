import 'package:flutter/material.dart';
import 'package:portfolio_vivek/device/desktop/work.desktop.dart';
import 'package:portfolio_vivek/device/mobile/work.mobile.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight < 500) {
        return const MobileWork();
      } else {
        return const DesktopWork();
      }
    });
  }
}
