



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
    return Container(
      margin: const EdgeInsets.only(top: 7, left: 15, bottom: 15, right: 15),
      child:
        const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              
              // posting div
              PostingWidget(),
          
              // posts
              CommunityPosts(),
          
            ]
          ),
        ),
        
    );
  }
}