


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GroupTypePost extends StatefulWidget {
  const GroupTypePost({super.key});

  @override
  State<GroupTypePost> createState() => _GroupTypePostState();
}

class _GroupTypePostState extends State<GroupTypePost> {

  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return; // Prevent empty messages
    setState(() {
      _messages.insert(0, _messageController.text); // Insert at the top to keep recent at bottom
    });
    _messageController.clear();
  }

  // upload image
  Future<void> _pickImage(Permission permission, ImageSource source) async {
  // Check the current permission status
  var status = await permission.status;

  if (status.isGranted) {
    // If permission is already granted, pick the image
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      // Handle the selected image file here
      // ignore: avoid_print
      print("Image selected: ${pickedFile.path}");
    }
  } else {
    // Request permission if not granted
    var newStatus = await permission.request();

    if (newStatus.isGranted) {
      // Permission granted after request; pick the image
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: source);

      if (pickedFile != null) {
        // Handle the selected image file here
        // ignore: avoid_print
        print("Image selected: ${pickedFile.path}");
      }
    } else {
      // Handle the case when permission is denied or permanently denied
      openAppSettings(); // Opens settings to configure permissions
    }
  }
}


  @override
  Widget build(BuildContext context) {

    // font size provider
    final fontSizeProvider = Provider.of<PostFontSize>(context);
    
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom:30),
      // decoration: BoxDecoration(
      //   color: Kcolors.lightGrey,
      // ),
      child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: IconButton(
                onPressed: () {
                   () async {
                    _pickImage(Permission.camera, ImageSource.gallery);
                  };
                },
                icon: Icon(Icons.camera_alt,
                size: 25,
                color: Kcolors.mainBlack
                ),
              ),
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Kcolors.lightGrey,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: AppLocalizations.of(context)!.textTyping,
                  ),
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainBlack,
                    fontSize: fontSizeProvider.x,
                    fontWeight: FontWeight.w600,
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: IconButton(
                onPressed: () {
                  _sendMessage();
                },
                icon: Icon(Icons.send,
                size: 27,
                color: Kcolors.mainRed
                ),
              ),
            ),
          ]
        ),
    );
  }
}