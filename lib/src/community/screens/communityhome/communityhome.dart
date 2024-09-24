



import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/widgets/postingwidget.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/widgets/postlist.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({super.key});

  @override
  State<CommunityHome> createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        CustomScrollView(
          slivers: [
            //top bar
            SliverToBoxAdapter(
              child:
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
                  child: const PostingWidget()
                ),
              ),

            // posts
            const CommunityPosts(),

          ]
        )
    );
  }
}