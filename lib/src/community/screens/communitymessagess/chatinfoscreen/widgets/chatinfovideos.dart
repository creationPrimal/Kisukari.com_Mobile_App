


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class ChatInfoVideos extends StatefulWidget {
  const ChatInfoVideos({super.key});

  @override
  State<ChatInfoVideos> createState() => _ChatInfoVideosState();
}

class _ChatInfoVideosState extends State<ChatInfoVideos> {

  
  

  @override
  Widget build(BuildContext context) {

    final videoLoaderProvider = Provider.of<ChatVideosLoader>(context); // loading images provider
    if (videoLoaderProvider.isLoading) {
      videoLoaderProvider.loadVideos();
    }

    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: 5.0, // Spacing between columns
        mainAxisSpacing: 5.0, // Spacing between rows
        childAspectRatio: 1.0, // Aspect ratio of each grid item
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return videoLoaderProvider.isLoading ? // if images are still loading to show loading shimmer
            Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child:
                Container(
                color: Kcolors.lightGrey,
              )
            )
            : // else if complete loading to display the images
            GestureDetector(
              onTap: () {
                
              },
              child: Container(
                color: Kcolors.lightGrey,
                // child: 
                  // CachedNetworkImage(
                  //   imageUrl: chatImageUrls[index].imageUrl,
                  //   filterQuality: FilterQuality.high, // image quality
                  //   fit: BoxFit.cover, 
                  //   placeholder: (context, url) => const Center(
                  //     child: CircularProgressIndicator(
                  //       color: Colors.black
                  //     ), // Loading indicator while fetching the image
                  //   ),
                  //   errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainBlack, size: 30),
                  // ),
              ),
            );
        },
        childCount: 6,
      ),
    );
  }
}