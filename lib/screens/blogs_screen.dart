import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/blogs/blog_post_popup.dart';
import 'package:portfolio_vivek/extras/onhover.dart';
import 'package:portfolio_vivek/extras/constants.dart';
import 'package:portfolio_vivek/screens/splash.screen.dart';
import 'package:portfolio_vivek/providers/firestore_provider.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  late Future<void> _future;
  final _logger = Logger();

  @override
  void initState() {
    super.initState();
    final provider = Provider.of<BlogPostProvider>(context, listen: false);
    _future = provider.fetchBlogPosts();
    _future.then((_) {
      _logger.i('Blog posts fetched successfully');
    }).catchError((error) {
      _logger.i('Error fetching blog posts: $error');
    });
  }

  void _blogPostPopup(String title, content, date) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlogPostPopup(
          blogTitle: title,
          blogContent: content,
          blogDate: date,
        );
      },
    );
  }

  Future<void> refreshData() async {
    // perform data fetching or reload the page
    // for example, you can use the Navigator to reload the current page:
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) => const BlogScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BlogPostProvider>(context);
    final screenSize = MediaQuery.of(context).size;
    final double itemWidth =
        screenSize.width / (screenSize.width > 600 ? 3 : 2);

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
              padding: const EdgeInsets.fromLTRB(35, 35, 35, 0),
              child: RefreshIndicator(
                backgroundColor: const Color(0xff222524),
                color: brandColour,
                strokeWidth: 3.0,
                onRefresh:
                    refreshData, //! specify the function to call when the user pulls down
                child: ListView(
                  children: [
                    Text(
                      "Blogs  🖹",
                      style: aboutHighlightFontStyle,
                    ),
                    sizedBox35,
                    FutureBuilder(
                      future: _future,
                      builder:
                          (BuildContext context, AsyncSnapshot<void> snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CustomLoadingIndicator(),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          return GridView.builder(
                            itemCount: provider.blogPosts.length,
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: itemWidth / 150,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              final post = provider.blogPosts[index];

                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: HoverWidget(
                                  child: InkWell(
                                    onTap: () => _blogPostPopup(
                                        post.title,
                                        post.content,
                                        '${post.date.month}/${post.date.day}/${post.date.year}'),
                                    child: SizedBox(
                                      width: screenSize.width * 2,
                                      child: Card(
                                        color: const Color(0xff222524),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                post.title,
                                                style: const TextStyle(
                                                    color: Color(0xFF0BDA74),
                                                    fontSize: 22,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                              const SizedBox(height: 12),
                                              Text(
                                                post.content,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const Expanded(child: SizedBox()),
                                              Text(
                                                '${post.date.month}/${post.date.day}/${post.date.year}',
                                                style: const TextStyle(
                                                    color: Color(0xFF0BDA74),
                                                    fontSize: 12,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ));
      }

      //! Implement Tablet view here.
      // else if(){
      //   return Tabletviewgoeshere();
      // }

      else {
        //! Desktop view for blog screen
        return Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
              padding: const EdgeInsets.all(75.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Blogs 🖹",
                    style: aboutHighlightFontStyle,
                  ),
                  sizedBox50,
                  Expanded(
                    child: FutureBuilder(
                      future: _future,
                      builder:
                          (BuildContext context, AsyncSnapshot<void> snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF0BDA74),
                            ),
                          );
                        } else if (snapshot.connectionState ==
                            ConnectionState.done) {
                          return GridView.builder(
                            itemCount: provider.blogPosts.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: itemWidth / 300,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              final post = provider.blogPosts[index];

                              return Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: HoverWidget(
                                  child: InkWell(
                                    onTap: () => _blogPostPopup(
                                        post.title,
                                        post.content,
                                        '${post.date.month}/${post.date.day}/${post.date.year}'),
                                    child: SizedBox(
                                      width: screenSize.width * 2,
                                      child: Card(
                                        color: const Color(0xff222524),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                post.title,
                                                style: const TextStyle(
                                                    color: Color(0xFF0BDA74),
                                                    fontSize: 24,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                              const SizedBox(height: 12),
                                              Text(
                                                post.content,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const Expanded(child: SizedBox()),
                                              Text(
                                                '${post.date.month}/${post.date.day}/${post.date.year}',
                                                style: const TextStyle(
                                                    color: Color(0xFF0BDA74),
                                                    fontSize: 12,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ));
      }
    });
  }
}
