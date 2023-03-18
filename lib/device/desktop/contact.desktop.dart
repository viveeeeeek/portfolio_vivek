import 'package:flutter/material.dart';
import 'package:portfolio_vivek/extras/onhover.dart';
import 'package:portfolio_vivek/extras/constants.dart';
import 'package:portfolio_vivek/widgets/contact/contact_button.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
        child: Stack(
      children: [
        Container(
            margin: const EdgeInsets.only(bottom: 15),
            width: screenWidth * 0.6,
            child: Card(
              color: const Color(0xff222524),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                  padding: const EdgeInsets.all(
                      16), // Adjust the padding as necessary
                  child: Stack(
                    children: [
                      //! Stacked Profile image
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                              child: const CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage("assets/digitalvivek.png"),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 16,
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: brandColour,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30))),
                                  child: const Icon(Icons.message_outlined)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LET'S TALK 💬",
                              style: TextStyle(
                                  fontSize:
                                      10, // Adjust the font size as necessary
                                  color: brandColour,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 2),
                            ),
                            const SizedBox(height: 32),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'Interested in working with me or got\nsome questions? Hit me up by ',
                                    style: contactMainFontStyle,
                                  ),
                                  TextSpan(
                                    text: 'email',
                                    style: contactHighlightFontStyle,
                                  ),
                                  TextSpan(
                                    text: '\nor my ',
                                    style: contactMainFontStyle,
                                  ),
                                  TextSpan(
                                    text: 'social media',
                                    style: contactHighlightFontStyle,
                                  ),
                                  TextSpan(
                                    text: '.',
                                    style: contactMainFontStyle,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 32),
                            Row(
                              children: const [
                                //! Linkedin Button
                                HoverWidget(
                                  child: ContactButton(
                                    imageAddress: 'assets/linkedin.png',
                                    buttonText: 'Chat on LinkedIn',
                                    buttonFunction: launchLinkedInChat,
                                  ),
                                ),
                                SizedBox(width: 8),
                                //! Email button
                                HoverWidget(
                                  child: ContactButton(
                                    imageAddress: 'assets/email.png',
                                    buttonText: 'Send me an email',
                                    buttonFunction: sendEmail,
                                  ),
                                ),
                                SizedBox(width: 8),
                                //! Download CV button
                                HoverWidget(
                                  child: ContactButton(
                                    imageAddress: 'assets/attach-file.png',
                                    buttonText: 'Download my CV',
                                    buttonFunction: launchLinkedInChat,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            )),

        //! Green rounded cube stacked on contact card
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: brandColour,
                  borderRadius: const BorderRadius.all(Radius.circular(16))),
            )),
      ],
    ));
  }
}
