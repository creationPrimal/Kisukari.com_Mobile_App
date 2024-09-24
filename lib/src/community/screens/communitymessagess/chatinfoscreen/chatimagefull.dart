



import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'dart:typed_data';
// import 'package:image_gallery_saver/image_gallery_saver.dart';
// import 'package:dio/dio.dart';

class ChatImageFull extends StatefulWidget {

  final String chatimage;
  const ChatImageFull({super.key, required this.chatimage});

  @override
  State<ChatImageFull> createState() => _ChatImageFullState();
}

class _ChatImageFullState extends State<ChatImageFull> {

  Future<void> downloadImage(Permission permission) async {
    var status = await permission.status;

    if(status.isGranted) {
      
    // var response = await Dio().get( widget.chatimage,
    //     options: Options(responseType: ResponseType.bytes));
    // final result = await ImageGallerySaver.saveImage(
    //     Uint8List.fromList(response.data),
    //     quality: 60,
    //     name: "hello");
    // print(result);
    // print('')
  
      // ignore: avoid_print
      print('access granted');
    } else if (status.isDenied) {
       var newStatus = await permission.status;
       if (newStatus.isGranted) {
        // ignore: avoid_print
        print('access granted');
       } else if (newStatus.isDenied) {
        openAppSettings();
       }
    } else {
      openAppSettings();
    }
  }
 
  
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
        actions: [
          // download button
          IconButton(
            onPressed: () {
              downloadImage(Permission.storage);
            },
            icon: Icon(Icons.download,
            color: Kcolors.mainWhite
            ),
          ),
          // delete button
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.delete,
            color: Kcolors.mainWhite
            ),
          ),
        ]
        
        
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
                  imageUrl: widget.chatimage,
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

  // download image
  // _saveNetworkImage() async {
  //   var response = await Dio().get(
  //       "https://ss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=a62e824376d98d1069d40a31113eb807/838ba61ea8d3fd1fc9c7b6853a4e251f94ca5f46.jpg",
  //       options: Options(responseType: ResponseType.bytes));
  //   final result = await ImageGallerySaver.saveImage(
  //       Uint8List.fromList(response.data),
  //       quality: 60,
  //       name: "hello");
  //   print(result);
  //   Utils.toast("$result");
  // }

}
