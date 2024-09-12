


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/chatfontsize.dart';
import 'package:provider/provider.dart';

class ChatText extends StatefulWidget {
  const ChatText({super.key});

  @override
  State<ChatText> createState() => _ChatTextState();
}

class _ChatTextState extends State<ChatText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      child: 
        Column(
          children: [
            // recived text
            Row(
              children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: IntrinsicWidth(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Kcolors.lightGrey,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // chat text
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur  consequat eu commodo diam. ',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: Provider.of<ChatFontSize>(context, listen: true).x,
                                  height: 1.2
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '20:12',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700
                                    )
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                        
                  ),
                ),
              )
            ]
            ),

            //  sent text
             // recived text
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                child: IntrinsicWidth(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Kcolors.lightBlue,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // chat text
                              Text(
                                'Lorem ipsum dolor sit amet, Vestibulum  eu commodo diam. ',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: Provider.of<ChatFontSize>(context, listen: false).x,
                                  height: 1.2
                                )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '20:12',
                                    textAlign: TextAlign.end,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700
                                    )
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                        
                  ),
                ),
              )
            ]
            )
            
          ],
        ),

    );
  }
}