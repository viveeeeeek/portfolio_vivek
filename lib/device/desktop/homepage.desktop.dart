import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:animate_do/animate_do.dart';
import 'package:portfolio_vivek/device/desktop/about.desktop.dart';
import 'package:portfolio_vivek/device/desktop/contact.desktop.dart';
import 'package:portfolio_vivek/device/desktop/header.desktop.dart';
import 'package:portfolio_vivek/device/desktop/work.desktop.dart';
import 'package:portfolio_vivek/widgets/skills.dart';
import 'package:portfolio_vivek/extras/onhover.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:portfolio_vivek/extras/constants.dart';
import 'package:portfolio_vivek/widgets/footer/footer.dart';
import 'package:portfolio_vivek/device/desktop/blogs.desktop.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({super.key});

  @override
  State<DesktopHomepage> createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> {
  bool isContactVisible = false;
  bool isAboutVisible = false;

  @override
  Widget build(BuildContext context) {
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
              children: [
                Container(
                  //! Main background colour of home
                  color: blackColour,
                  child: Padding(
                    padding: const EdgeInsets.all(75.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 60,
                        ), //! Spacing
                        AutoScrollTag(
                            key: const ValueKey(1),
                            index: 1,
                            controller: controller,
                            child: const DesktopHeader()),
                        sizedBox150, //! Spacer
                        Center(
                          child: InkWell(
                            onTap: () {
                              controller.scrollToIndex(2,
                                  preferPosition: AutoScrollPosition.begin);
                            },
                            child: HoverWidget(
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Lottie.asset("assets/arrow-down.json",
                                    height: 25, width: 25),
                              ),
                            ),
                          ),
                        ),
                        sizedBox150, //! Spacer
                        AutoScrollTag(
                          key: const ValueKey(2),
                          index: 2,
                          controller: controller,
                          child: const DesktopAbout(),
                        ),
                        sizedBox200,
                        const Skills(),
                        sizedBox200,
                        const DesktopWork(),
                        sizedBox200,
                        const DesktopBlogs(),
                        sizedBox200,
                        // // Work(),
                        VisibilityDetector(
                            key: const Key('contact'),
                            onVisibilityChanged: (visibilityInfo) {
                              if (visibilityInfo.visibleFraction >= 0.5) {
                                // Call the animate function for the FadeIn animation
                                setState(() {
                                  isContactVisible = true;
                                });
                              }
                            },
                            child: FadeInUp(
                              duration: const Duration(seconds: 1),
                              animate: isContactVisible,
                              from: 75,
                              child: const DesktopContact(),
                            )),
                        sizedBox75, //! Spacing
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
