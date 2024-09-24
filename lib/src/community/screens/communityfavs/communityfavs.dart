


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityfavs/widgets/savedposts.dart';

class CommunityFavs extends StatefulWidget {
  const CommunityFavs({super.key});

  @override
  State<CommunityFavs> createState() => _CommunityFavsState();
}

class _CommunityFavsState extends State<CommunityFavs> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
        CustomScrollView(
          slivers: [
            // saved posts
            SavedCommunityPosts(),
          ]
        )
    );
  }
}