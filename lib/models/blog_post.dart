//! Simple class to organize data fetched from cloud firestore.
class BlogPost {
  String title;
  String content;
  DateTime date;

  BlogPost({
    required this.title,
    required this.content,
    required this.date,
  });
}
