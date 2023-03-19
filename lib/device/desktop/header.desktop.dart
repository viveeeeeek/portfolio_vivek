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
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              FadeAnimatedText(
                // '🙏🏼 Namaste,',
                'Namaste,',
                duration: const Duration(milliseconds: 1500),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              FadeAnimatedText(
                // '🙇🏻‍♂ Konnichiwa',

                'Konnichiwa,',
                duration: const Duration(milliseconds: 1500),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              RotateAnimatedText(
                'Bonjour,',
                alignment: Alignment.centerLeft,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
              FadeAnimatedText(
                // '🤌🏻 Hola,',
                'Hola,',
                duration: const Duration(milliseconds: 1500),
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
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

// class MyAnimatedRichText extends StatelessWidget {
//   final TextStyle textStyle;
//   final String textString;

//   const MyAnimatedRichText(
//       {Key? key, required this.textStyle, required this.textString})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedTextKit(
//       animatedTexts: [
//         TyperAnimatedText(
//           textString,
//           textStyle: textStyle,
//           speed: const Duration(milliseconds: 200),
//           curve: Curves.easeIn,
//         )
//       ],
//       repeatForever: true,
//       displayFullTextOnTap: true,
//       stopPauseOnTap: true,
//       onTap: () {
//         // Do something when the text is tapped
//       },
//     );
//   }
// }
