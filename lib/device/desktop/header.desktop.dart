import 'package:flutter/material.dart';
import 'package:portfolio_vivek/extras/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBox100,
        SizedBox(
          height: 73,
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(
                // '🤝 Hello,',
                'Hello,',
                duration: const Duration(milliseconds: 1500),
                textStyle: desktopAnimatedTextKitTextStyle,
              ),
              FadeAnimatedText(
                // '🙏🏼 Namaste,',
                'Namaste,',
                duration: const Duration(milliseconds: 1500),
                textStyle: desktopAnimatedTextKitTextStyle,
              ),
              FadeAnimatedText(
                // '🙇🏻‍♂ Konnichiwa',
                'Konnichiwa,',
                duration: const Duration(milliseconds: 1500),
                textStyle: desktopAnimatedTextKitTextStyle,
              ),
              RotateAnimatedText(
                'Bonjour,',
                alignment: Alignment.centerLeft,
                textStyle: desktopAnimatedTextKitTextStyle,
              ),
              FadeAnimatedText(
                // '🤌🏻 Hola,',
                'Hola,',
                duration: const Duration(milliseconds: 1500),
                textStyle: desktopAnimatedTextKitTextStyle,
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "I'm Vivek 👋🏼\n",
                style: headerMainFontStyle,
              ),
              TextSpan(
                  style: headerHighlightFontStyle,
                  text: 'I develop tools that make'),
              TextSpan(
                text: '\nbuilding products ',
                style: headerMainFontStyle,
              ),
              TextSpan(
                text: 'effortless',
                style: headerHighlightFontStyle,
              ),
              TextSpan(
                text: '.',
                style: headerMainFontStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
