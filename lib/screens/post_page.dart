import 'package:flutter/material.dart';
import 'package:google_ad/widgets/post_card.dart';

class PostPage extends StatelessWidget {
  final post;
  const PostPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Post Detail"),
        ),
        body: PostCard(
          hasReadMore: false,
          post: post,
        ));
  }
}
