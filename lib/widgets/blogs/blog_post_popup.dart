import 'package:flutter/material.dart';

class BlogPostPopup extends StatelessWidget {
  const BlogPostPopup(
      {super.key,
      required this.blogTitle,
      required this.blogContent,
      required this.blogDate});

  final String blogTitle;
  final String blogContent;
  final String blogDate;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return AlertDialog(
          backgroundColor: const Color(0xff222524),
          title: Text(
            blogTitle,
            style: const TextStyle(
                color: Color(0xFF0BDA74),
                fontSize: 28,
                letterSpacing: 1,
                fontStyle: FontStyle.italic),
          ),
          content: SizedBox(
            height: screenSize.height / 1.8,
            width: screenSize.width / 1.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        blogContent,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                Text(
                  blogDate,
                  style: const TextStyle(
                      color: Color(0xFF0BDA74),
                      fontSize: 12,
                      letterSpacing: 1,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        );
      }
      //! Implement Tablet view here.
      // else if(){
      //   return TabletContact();
      // }
      else {
//! esktop view for blog post card popup
        return AlertDialog(
          backgroundColor: const Color(0xff222524),
          title: Text(
            blogTitle,
            style: const TextStyle(
                color: Color(0xFF0BDA74),
                fontSize: 28,
                letterSpacing: 1,
                fontStyle: FontStyle.italic),
          ),
          content: SizedBox(
            height: screenSize.height,
            width: screenSize.width / 1.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        blogContent,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                Text(
                  blogDate,
                  style: const TextStyle(
                      color: Color(0xFF0BDA74),
                      fontSize: 14,
                      letterSpacing: 1,
                      fontStyle: FontStyle.italic),
                )
              ],
            ),
          ),
        );
      }
    });
  }
}
