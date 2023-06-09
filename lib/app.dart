import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'device/mobile/homepage.mobile.dart';
import 'device/desktop/homepage.desktop.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const MobileHomepage().animate().fade();
      }
      //! Implement Tablet view here.
      // else if(){
      //   return TabletContact();
      // }
      else {
        return const DesktopHomepage().animate().fade();
      }
    });
  }
}
