


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileImageFull extends StatefulWidget {

  final String profileimageUrl;

  const ProfileImageFull({super.key, required this.profileimageUrl});

  @override
  State<ProfileImageFull> createState() => _ProfileImageFullState();
}

class _ProfileImageFullState extends State<ProfileImageFull> {

  File? _profileImage;

  Future<void> _pickImage(Permission permission, ImageSource source) async {
    
    var status = await permission.status;

    if (status.isGranted) {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        setState(() {
          _profileImage = File(pickedFile.path);
        });
      }
      else {
        var newStatus = await permission.request();
        if (newStatus.isGranted) {
          // Permission granted after request; pick the image
          final picker = ImagePicker();
          final pickedFile = await picker.pickImage(source: source);

          if (pickedFile != null) {
            setState(() {
              _profileImage = File(pickedFile.path);
            });
          }
        } else {
          // Handle the case when permission is denied or permanently denied
          openAppSettings(); // open settings to configure;
        }
        }
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
          IconButton(
            onPressed: () async {
              _pickImage(Permission.camera, ImageSource.gallery);
            },
            icon: Icon(Icons.camera_alt,
            color: Kcolors.mainWhite
            )
          )
        ]
      ),
      body:
        Center(
          child:
            Container(
              height: 400,
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              child:
                _profileImage != null ?
                Image.file(
                  _profileImage!,
                  fit: BoxFit.cover,
                )
                :
                Image.asset(
                  widget.profileimageUrl,
                  fit: BoxFit.cover,
                )
            )
        )
    );
  }
}