


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/widgets/post.dart';

class CommunityPosts extends StatefulWidget {
  const CommunityPosts({super.key});

  @override
  State<CommunityPosts> createState() => _CommunityPostsState();
}

class _CommunityPostsState extends State<CommunityPosts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
      itemCount: 10,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // final post = posts[index];
        return const PostItem();
      },
             ),
    );
    
  }
}