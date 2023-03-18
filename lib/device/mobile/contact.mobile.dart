import 'package:flutter/material.dart';
import 'package:portfolio_vivek/extras/constants.dart';
import 'package:portfolio_vivek/widgets/contact/contact_button.dart';

class MobileContact extends StatefulWidget {
  const MobileContact({super.key});

  @override
  State<MobileContact> createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        width: screenWidth * 0.9,
        child: Card(
          color: const Color(0xff222524),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
              padding:
                  const EdgeInsets.all(16), // Adjust the padding as necessary
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "LET'S TALK",
                              style: TextStyle(
                                  fontSize:
                                      12, // Adjust the font size as necessary
                                  color: brandColour,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2),
                            ),
                            const Expanded(child: SizedBox()),
                            //! Stacked Profile image
                            Stack(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 25),
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
                                      child:
                                          const Icon(Icons.message_outlined)),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Interested in working with me or got\nsome questions? Hit me up by ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'email',
                                style: TextStyle(
                                    color: Color(0xFF0BDA74),
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontStyle: FontStyle.italic),
                              ),
                              TextSpan(
                                text: '\nor my ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'social media',
                                style: TextStyle(
                                    color: Color(0xFF0BDA74),
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Column(
                          children: const [
                            //! Linkedin Button
                            ContactButton(
                              imageAddress: 'assets/linkedin.png',
                              buttonText: 'Chat on LinkedIn',
                              buttonFunction: launchLinkedInChat,
                            ),
                            SizedBox(height: 8),
                            //! Email button
                            ContactButton(
                              imageAddress: 'assets/email.png',
                              buttonText: 'Send me an email',
                              buttonFunction: sendEmail,
                            ),
                            SizedBox(height: 8),
                            //! Download CV button
                            ContactButton(
                              imageAddress: 'assets/attach-file.png',
                              buttonText: 'Download my CV',
                              buttonFunction: launchLinkedInChat,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
