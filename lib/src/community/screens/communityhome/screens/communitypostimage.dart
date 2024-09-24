




import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:cached_network_image/cached_network_image.dart';
// import 'dart:typed_data';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:dio/dio.dart';

class PostImageFull extends StatefulWidget {

  final String postimage;
  const PostImageFull({super.key, required this.postimage});

  @override
  State<PostImageFull> createState() => _PostImageFullState();
}

class _PostImageFullState extends State<PostImageFull> {

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Kcolors.mainBlack,
      appBar: AppBar(
      backgroundColor: Kcolors.mainBlack,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
          color: Kcolors.mainWhite
          ),
        ),
        
        
      ),
      body:
        Center(
          child:
            Container(
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              child:
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: widget.postimage,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover, // Adjust the image fit style
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ), // Loading indicator while fetching the image
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainWhite, size: 40), // Error widget if the image fails to load
                ),
              ),
            )
        )
    );
  }

}
