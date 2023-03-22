import '../../extras/onhover.dart';
import '../../extras/constants.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_vivek/screens/blogs_screen.dart';

class DesktopBlogs extends StatelessWidget {
  const DesktopBlogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "THOUGHTS AND INSIGHTS 💭",
          style: TextStyle(
              fontSize: 16, // Adjust the font size as necessary
              color: brandColour,
              letterSpacing: 2),
        ),
        sizedBox50,
        Text(
          "I share my thoughts and insights on technology and the things I love.\nFrom the latest trends and innovations to my personal experiences and opinions,\nmy blog covers a wide range of topics that are sure to pique your interest.",
          style: TextStyle(
            color: whiteColour,
            fontSize: 18,
            letterSpacing: 1,
          ),
        ),
        sizedBox50,
        HoverWidget(
            child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const BlogScreen())));
          },
          child: Container(
            decoration: BoxDecoration(
                gradient: buttonLinearGradient,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
            height: 50,
            width: 200,
            child: Center(
              child: Text(
                'Discover More',
                style: TextStyle(
                    color: blackColour,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
