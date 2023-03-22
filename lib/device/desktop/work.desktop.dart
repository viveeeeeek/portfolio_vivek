import 'package:portfolio_vivek/extras/onhover.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../extras/constants.dart';
import 'package:flutter/material.dart';

class DesktopWork extends StatelessWidget {
  const DesktopWork({super.key});

  //! LinkedIn Button Action
  void launchGithubProfile() async {
    const String githubProfileLink = 'https://www.github.com/viveeeeeek';
    final String encodedLink = Uri.encodeFull(githubProfileLink);
    final Uri url = Uri.parse(encodedLink);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
                  fontSize: 26,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'time-saving alternatives.',
              style: TextStyle(
                  color: brandColour,
                  fontSize: 26,
                  letterSpacing: 2,
                  fontStyle: FontStyle.italic),
            ),
          ]),
        ),
        sizedBox25,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            sizedBox50,
            HoverWidget(
              child: InkWell(
                onTap: launchGithubProfile,
                child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        gradient: buttonLinearGradient,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Visit my GitHub profile',
                            style: TextStyle(
                              color: blackColour,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_right_alt_rounded,
                            color: blackColour,
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ],
        )
      ],
    );
  }
}
