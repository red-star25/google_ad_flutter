import 'package:flutter/material.dart';
import 'package:google_ad/screens/post_page.dart';

class PostCard extends StatelessWidget {
  final post;
  final bool hasReadMore;
  const PostCard({Key? key, required this.post, required this.hasReadMore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(post.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 10,
            ),
            child: Column(
              children: [
                Text(
                  post.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  post.body,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                hasReadMore
                    ? ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PostPage(
                                post: post,
                              ),
                            ),
                          )
                        },
                        child: const Text("Read more.."),
                      )
                    : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
