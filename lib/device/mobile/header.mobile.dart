import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_vivek/extras/constants.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sizedBox75,
        SizedBox(
          height: 42,
          child: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(
                  // '🤝 Hello,',
                  'Hello,',
                  alignment: Alignment.centerLeft,
                  textStyle: mobileAnimatedTextKitTextStyle),
              RotateAnimatedText(
                  // '🙏🏼 Namaste,',
                  'Namaste,',
                  alignment: Alignment.centerLeft,
                  textStyle: mobileAnimatedTextKitTextStyle),
              RotateAnimatedText(
                  // '🤌🏻 Hola,',
                  'Hola,',
                  alignment: Alignment.centerLeft,
                  textStyle: mobileAnimatedTextKitTextStyle),
              RotateAnimatedText('Bonjour,',
                  alignment: Alignment.centerLeft,
                  textStyle: mobileAnimatedTextKitTextStyle),
              RotateAnimatedText(
                  // '🙇🏻‍♂ Konnichiwa',
                  'Konnichiwa,',
                  alignment: Alignment.centerLeft,
                  textStyle: mobileAnimatedTextKitTextStyle)
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
                style: mobileHeaderMainFontStyle,
              ),
              TextSpan(
                  style: mobileHeaderMainFontStyle,
                  text: 'I develop tools that make'),
              TextSpan(
                text: '\nbuilding products ',
                style: mobileHeaderMainFontStyle,
              ),
              TextSpan(
                text: 'effortless',
                style: mobileHeaderHighlightFontStyle,
              ),
              TextSpan(
                text: '.',
                style: mobileHeaderMainFontStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
