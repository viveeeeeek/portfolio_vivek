import '../../extras/constants.dart';
import 'package:flutter/material.dart';

class DesktopWork extends StatelessWidget {
  const DesktopWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'MY WORK',
          style: TextStyle(fontSize: 16, color: brandColour, letterSpacing: 2),
        ),
        sizedBox25,
        RichText(
          text: TextSpan(children: [
            const TextSpan(
              text:
                  'I provide value to my work buddies around the globe by\nhelping speed up their workflow and enriching their assets\nlibrary with new, ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'time-saving alternatives.',
              style: TextStyle(
                  color: brandColour,
                  fontSize: 33,
                  letterSpacing: 2,
                  fontStyle: FontStyle.italic),
            ),
          ]),
        ),
        sizedBox25,
        Row(
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "If you want to deep dive into code ",
                  style: TextStyle(
                    color: whiteColour,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
                TextSpan(
                  text: "*impatiently*, you can ",
                  style: TextStyle(
                      color: whiteColour,
                      fontSize: 18,
                      letterSpacing: 1,
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: "find everything on my GitHub profile.",
                  style: TextStyle(
                    color: whiteColour,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ]),
            ),
            const SizedBox(
              width: 136,
            ),
            Container(
              decoration: BoxDecoration(
                  color: brandColour,
                  borderRadius: const BorderRadius.all(Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                child: Row(
                  children: const [
                    Text(
                      'Visit my GitHub profile',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_alt_rounded,
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
