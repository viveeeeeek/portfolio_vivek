import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:portfolio_vivek/widgets/skills.dart';
import 'package:portfolio_vivek/extras/onhover.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:portfolio_vivek/extras/constants.dart';
import 'package:portfolio_vivek/widgets/about/about.dart';
import 'package:portfolio_vivek/widgets/header/header.dart';
import 'package:portfolio_vivek/widgets/footer/footer.dart';
import 'package:portfolio_vivek/widgets/contact/contact.dart';
import 'package:portfolio_vivek/device/mobile/blogs.mobile.dart';

class MobileHomepage extends StatefulWidget {
  const MobileHomepage({super.key});

  @override
  State<MobileHomepage> createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);

    return WillPopScope(
      //! To enable the browser's back button to navigate back to the previous screen in your Flutter app,
      //! you should use Navigator.maybePop instead of Navigator.push.
      onWillPop: () async {
        bool isPop = await Navigator.maybePop(context);
        return isPop;
      },
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              controller: controller,
              dragStartBehavior: DragStartBehavior.down,
              physics: const ClampingScrollPhysics(),
              children: [
                Container(
                  //! Main background colour of home
                  color: const Color(0xff050505),
                  child: Padding(
                    padding: screenSize.width < 500
                        ? const EdgeInsets.all(25.0)
                        : const EdgeInsets.all(75.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        sizedBox150,
                        AutoScrollTag(
                            key: const ValueKey(1),
                            index: 1,
                            controller: controller,
                            child: const Header()),
                        const SizedBox(
                          height: 250,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              controller.scrollToIndex(2);
                            },
                            child: HoverWidget(
                              child: Lottie.asset("assets/arrow-down.json",
                                  height: 25, width: 25),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 250,
                        ),
                        AutoScrollTag(
                            key: const ValueKey(2),
                            index: 2,
                            controller: controller,
                            child: const About()),
                        sizedBox100,
                        const Skills(),
                        sizedBox150,
                        const MobileBlogs(),
                        sizedBox150,
                        // // Work(),
                        AutoScrollTag(
                            key: const ValueKey(4),
                            index: 4,
                            controller: controller,
                            child: const ContactCard()),
                        sizedBox150,
                        const Footer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
