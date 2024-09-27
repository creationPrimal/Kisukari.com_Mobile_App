

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/chatfontsize.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MrKisukariTypeMessage extends StatefulWidget {
  const MrKisukariTypeMessage({super.key});

  @override
  State<MrKisukariTypeMessage> createState() => _MrKisukariTypeMessageState();
}

class _MrKisukariTypeMessageState extends State<MrKisukariTypeMessage> {

  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return; // Prevent empty messages
    setState(() {
      _messages.insert(0, _messageController.text); // Insert at the top to keep recent at bottom
    });
    _messageController.clear();
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom:30),
      // decoration: BoxDecoration(
      //   color: Kcolors.lightGrey,
      // ),
      child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.8,
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
                    hintText: AppLocalizations.of(context)!.communityTypemessage,
                  ),
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainBlack,
                    fontSize: Provider.of<ChatFontSize>(context).x,
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