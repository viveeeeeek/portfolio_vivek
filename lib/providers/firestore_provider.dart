import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio_vivek/models/blog_post.dart';

//! Extending class with ChangeNotifier so other classes can use this data via provi
class BlogPostProvider with ChangeNotifier {
  List<BlogPost> _blogPosts = [];
  List<BlogPost> get blogPosts => _blogPosts;
//! Future function to fetch all posts from cloud firestore collection and save it to list.
  Future<void> fetchBlogPosts() async {
    final QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('posts').get();
//! Mapping fetched data
    _blogPosts = snapshot.docs.map((DocumentSnapshot document) {
      final data = document.data() as Map<String, dynamic>;
//! Storing fetched data to blog_post model (simple class with strings and date variable for title,content,datestamp)
      return BlogPost(
        title: data['title'] ?? '',
        content: data['content'] ?? '',
        date: data['timestamp']?.toDate() ?? DateTime.now(),
      );
    }).toList();

    notifyListeners();
  }
}
