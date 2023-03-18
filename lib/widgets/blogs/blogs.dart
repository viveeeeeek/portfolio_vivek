import 'package:flutter/material.dart';
import 'package:portfolio_vivek/device/desktop/blogs.desktop.dart';
import 'package:portfolio_vivek/device/mobile/blogs.mobile.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return const MobileBlogs();
      }
      //! Implement Tablet view here.
      // else if(){
      //   return TabletContact();
      // }
      else {
        return const DesktopBlogs();
      }
    });
  }
}
