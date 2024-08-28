


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';

class ProfileImageFull extends StatefulWidget {

  final String profileimageUrl;

  const ProfileImageFull({super.key, required this.profileimageUrl});

  @override
  State<ProfileImageFull> createState() => _ProfileImageFullState();
}

class _ProfileImageFullState extends State<ProfileImageFull> {

  File? _profileImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
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
            onPressed: _pickImage,
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