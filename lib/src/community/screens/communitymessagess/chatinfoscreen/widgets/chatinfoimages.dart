

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatinfoscreen/chatimagefull.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatinfoscreen/models/chatimagesmodel.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class ChatInfoImages extends StatefulWidget {
  const ChatInfoImages({super.key});

  @override
  State<ChatInfoImages> createState() => _ChatInfoImagesState();
}

class _ChatInfoImagesState extends State<ChatInfoImages> {

  
  

  @override
  Widget build(BuildContext context) {

    final imageLoaderProvider = Provider.of<ChatImagesLoader>(context); // loading images provider
    if (imageLoaderProvider.isLoading) {
      imageLoaderProvider.loadImages();
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
          return imageLoaderProvider.isLoading ? // if images are still loading to show loading shimmer
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
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => ChatImageFull(chatimage: chatImageUrls[index].imageUrl)
                    )
                );
              },
              child: Container(
                color: Kcolors.lightGrey,
                child: 
                  CachedNetworkImage(
                    imageUrl: chatImageUrls[index].imageUrl,
                    filterQuality: FilterQuality.high, // image quality
                    fit: BoxFit.cover, 
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black
                      ), // Loading indicator while fetching the image
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainBlack, size: 30),
                  ),
              ),
            );
        },
        childCount: chatImageUrls.length,
      ),
    );
  }
}