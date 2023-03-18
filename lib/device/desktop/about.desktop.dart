import 'package:flutter/material.dart';
import 'package:portfolio_vivek/extras/onhover.dart';
import 'package:portfolio_vivek/extras/constants.dart';

class DesktopAbout extends StatefulWidget {
  const DesktopAbout({super.key});

  @override
  State<DesktopAbout> createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox75,
            Text(
              'ABOUT ME 🤗',
              style:
                  TextStyle(fontSize: 16, color: brandColour, letterSpacing: 2),
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "I'm a developer crazy about bringing ",
                  style: aboutMainFontStyle,
                ),
                TextSpan(
                  text: 'something ',
                  style: aboutHighlightFontStyle,
                ),
                TextSpan(
                  text: 'to life from',
                  style: aboutMainFontStyle,
                ),
                TextSpan(
                  text: '\nnothing',
                  style: aboutNoHighlightFotStyle,
                ),
                TextSpan(
                  text: '. ',
                  style: aboutMainFontStyle,
                ),
                TextSpan(
                  text:
                      'My focus is on constant learning and using that\nknowledge in practice as soon as possible - theory is cool\nbut working on your own thing is way ',
                  style: aboutMainFontStyle,
                ),
                TextSpan(
                  text: ':',
                  style: TextStyle(
                      color: whiteColour,
                      fontSize: 33,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                TextSpan(
                  text: 'coooler',
                  style: aboutNoHighlightFotStyle,
                ),
                TextSpan(
                  text: ':',
                  style: TextStyle(
                      color: whiteColour,
                      fontSize: 33,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ]),
            ),
            sizedBox75,
            SizedBox(
              height: 325,
              width: screenSize.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I'm currently available for a stationary developer position\nsomewhere in Krakåw, Poland. If you got something\ninteresting, feel more than encouraged to contact me!",
                    style: TextStyle(
                      color: whiteColour,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  ),
                  sizedBox50,
                  HoverWidget(
                      child: InkWell(
                    //! Implement button action here
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: buttonLinearGradient,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Drop me a line',
                              style: TextStyle(
                                  color: blackColour,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
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
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
        //! Main Images stack
        Positioned(
          bottom: 0,
          right: 50,
          child: Stack(
            children: [
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    // margin: EdgeInsets.only(left: 200, bottom: 200),
                    height: 250,
                    width: 350,
                    decoration: BoxDecoration(
                        color: whiteColour,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                        'assets/digitalvivek.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                bottom: 60,
                right: 100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      color: brandColour,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                ),
              ),
              Positioned(
                child: Padding(
                    padding: const EdgeInsets.only(left: 250, bottom: 100),
                    child: Container(
                      height: 250,
                      width: 250,
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
            ],
          ),
        ),
      ],
    );
  }
}
