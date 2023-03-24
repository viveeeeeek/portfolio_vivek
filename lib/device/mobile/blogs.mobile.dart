import '../../extras/constants.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_vivek/screens/blogs_screen.dart';

class MobileBlogs extends StatelessWidget {
  const MobileBlogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "THOUGHTS AND INSIGHTS 💭",
          style: TextStyle(
              fontSize: 12, // Adjust the font size as necessary
              color: brandColour,
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
        sizedBox50,
        Text(
          "Discover my insights and thoughts on technology and the things I love. Explore my blog for the latest trends, personal experiences, and inspiring ideas.",
          style: TextStyle(
            color: whiteColour,
            fontSize: 14,
            letterSpacing: 1,
          ),
        ),
        sizedBox35,
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const BlogScreen())));
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                gradient: buttonLinearGradient,
                borderRadius: const BorderRadius.all(Radius.circular(25))),
            child: Center(
              child: Text(
                'Discover More',
                style: TextStyle(
                    color: blackColour,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
