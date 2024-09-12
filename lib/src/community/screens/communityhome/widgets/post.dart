

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';

class PostItem extends StatefulWidget {
  const PostItem({super.key});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Kcolors.lightGrey,
      margin:const EdgeInsets.all(8.0),
      child: const Padding(
        padding:EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Post content
            Text(
              'hello',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Display image if available
            // if (post.imageUrl != null)
            //   Image.network(
            //     post.imageUrl!,
            //     height: 150,
            //     width: double.infinity,
            //     fit: BoxFit.cover,
            //   ),

            // Display video thumbnail or icon if available
            // if (post.videoUrl != null)
            //   Padding(
            //     padding: const EdgeInsets.only(top: 10),
            //     child: Row(
            //       children: [
            //         Icon(Icons.videocam),
            //         SizedBox(width: 8),
            //         Text(
            //           'Video available',
            //           style: TextStyle(fontSize: 14, color: Colors.grey),
            //         ),
            //       ],
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}