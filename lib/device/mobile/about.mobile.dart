import 'package:flutter/material.dart';
import 'package:portfolio_vivek/extras/constants.dart';

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ABOUT ME 🤗',
              style:
                  TextStyle(fontSize: 10, color: brandColour, letterSpacing: 2),
            ),
            sizedBox50,
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "I'm a developer crazy about bringing ",
                  style: mobileAboutMainFontStyle,
                ),
                TextSpan(
                  text: 'something ',
                  style: mobileAboutHighlightFontStyle,
                ),
                TextSpan(
                  text: 'to life from ',
                  style: mobileAboutMainFontStyle,
                ),
                TextSpan(
                  text: 'nothing',
                  style: mobileAboutNoHighlightFotStyle,
                ),
                TextSpan(
                  text: '.',
                  style: mobileAboutMainFontStyle,
                ),
                TextSpan(
                  text:
                      '\nMy focus is on constant learning and using that\nknowledge in practice as soon as possible - theory is cool\nbut working on your own thing is way ',
                  style: mobileAboutMainFontStyle,
                ),
                TextSpan(
                  text: ':',
                  style: TextStyle(
                      color: whiteColour,
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'coooler',
                  style: mobileAboutNoHighlightFotStyle,
                ),
                TextSpan(
                  text: ':',
                  style: TextStyle(
                      color: whiteColour,
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ]),
            ),
            sizedBox50,
            SizedBox(
              height: 535,
              width: screenSize.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I'm currently available for a stationary developer position\nsomewhere in Krakåw, Poland. If you got something\ninteresting, feel more than encouraged to contact me!",
                    style: TextStyle(
                      color: whiteColour,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                  sizedBox50,
                  Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          gradient: buttonLinearGradient,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Drop me a line',
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
                  sizedBox35
                ],
              ),
            ),
          ],
        ),
        //! Main Images stack
        Positioned(
          bottom: 0,
          right: 0,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 25,
                child: Padding(
                    padding: const EdgeInsets.only(left: 0, bottom: 0),
                    child: Container(
                      // margin: EdgeInsets.only(left: 200, bottom: 200),
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          color: whiteColour,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        child: Image.asset(
                          'assets/digitalvivek.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
              Positioned(
                bottom: 80,
                right: 0,
                child: Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: brandColour,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                ),
              ),
              Positioned(
                child: Padding(
                    padding: const EdgeInsets.only(left: 100, bottom: 100),
                    child: Container(
                      // margin: EdgeInsets.only(left: 200, bottom: 200),
                      height: 150,
                      width: 150,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        child: Image.asset(
                          'assets/digitalvivek.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
