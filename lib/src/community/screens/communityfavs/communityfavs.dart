


import 'package:flutter/material.dart';

class CommunityFavs extends StatefulWidget {
  const CommunityFavs({super.key});

  @override
  State<CommunityFavs> createState() => _CommunityFavsState();
}

class _CommunityFavsState extends State<CommunityFavs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child:
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Favs')
          ]
        )
    );
  }
}