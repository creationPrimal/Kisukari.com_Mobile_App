


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserProfileImage extends StatefulWidget {

  final String userprofileimg;

  const UserProfileImage({super.key, required this.userprofileimg});

  @override
  State<UserProfileImage> createState() => _UserProfileImageState();
}

class _UserProfileImageState extends State<UserProfileImage> {

  
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
              height: 400,
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              child:
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: widget.userprofileimg,
                  fit: BoxFit.cover, // Adjust the image fit style
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(), // Loading indicator while fetching the image
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainWhite, size: 40), // Error widget if the image fails to load
                ),
              ),
            )
        )
    );
  }
}