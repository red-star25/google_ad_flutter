import 'package:flutter/material.dart';
import 'package:google_ad/data/post.dart';
import 'package:google_ad/screens/post_page.dart';
import 'package:google_ad/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Google Ad Integration"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: Post.posts.length,
        itemBuilder: (context, index) {
          final post = Post.posts[index];
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PostPage(
                        post: post,
                      ),
                    ),
                  );
                },
                child: PostCard(
                  hasReadMore: true,
                  post: post,
                )),
          );
        },
      ),
    );
  }
}
