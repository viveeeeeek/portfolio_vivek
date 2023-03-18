import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../extras/constants.dart';

class ContactButton extends StatefulWidget {
  const ContactButton(
      {super.key,
      required this.imageAddress,
      required this.buttonText,
      required this.buttonFunction});

  final String imageAddress;
  final String buttonText;
  final void Function() buttonFunction;

  @override
  State<ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<ContactButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: TextButton(
        onPressed: widget.buttonFunction,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          overlayColor:
              MaterialStateProperty.all<Color>(const Color(0xFF0BDA74)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              widget.imageAddress,
              height: screenSize.width < 500 ? 20 : 24,
              color: isHovered ? Colors.black : Colors.white,
              width: screenSize.width < 500 ? 20 : 24,
            ),
            const SizedBox(width: 8),
            Text(
              widget.buttonText,
              style: isHovered
                  ? hoveredTextStyleContactButton
                  : normalTextStyleContactButton,
            ),
          ],
        ),
      ),
    );
  }
}

//! LinkedIn Button Action
void launchLinkedInChat() async {
  const String linkedinProfileLink =
      'https://www.linkedin.com/in/sonawane-vivek/chat/';
  final String encodedLink = Uri.encodeFull(linkedinProfileLink);
  final Uri url = Uri.parse(encodedLink);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

//! Email Button Action
void sendEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'contact@viveeeeeek.us',
    query:
        'subject=Hey there!&body=Hi, I checked your portfolio website and I am interested in your work. Could you please provide more information? Thank you!',
  );
  final Uri emailUri = Uri.parse(params.toString());
  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not launch ${emailUri.toString()}';
  }
}
