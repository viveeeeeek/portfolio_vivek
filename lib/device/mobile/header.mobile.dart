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
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
              RotateAnimatedText(
                // '🙏🏼 Namaste,',
                'Namaste,',
                alignment: Alignment.centerLeft,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
              RotateAnimatedText(
                // '🤌🏻 Hola,',
                'Hola,',
                alignment: Alignment.centerLeft,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
              RotateAnimatedText(
                // '🙇🏻‍♂ Konnichiwa',

                'Konnichiwa,',
                alignment: Alignment.centerLeft,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              )
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
