import 'package:flutter/material.dart';
import 'package:portfolio_vivek/device/desktop/contact.desktop.dart';
import 'package:portfolio_vivek/device/mobile/contact.mobile.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const MobileContact();
      }
      //! Implement Tablet view here.
      // else if(){
      //   return TabletContact();
      // }
      else {
        return const DesktopContact();
      }
    });
  }
}
