


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class PostingWidget extends StatelessWidget {
  const PostingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, postcontent);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Kcolors.lightGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: 
          Padding(
            padding: const EdgeInsets.all(8),
            child:
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          AppLocalizations.of(context)!.textTyping,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Kcolors.mainGrey,
                            fontWeight: FontWeight.w600,
                          )
                        
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: 
                            Row(
                              children: [
                                Icon(Icons.add_photo_alternate_outlined,
                                color: Kcolors.mainGreen,
                                size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    AppLocalizations.of(context)!.communityPhoto,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                )
                              ]
                            ),
                            
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: 
                            Row(
                              children: [
                                Icon(Icons.videocam_outlined,
                                color: Kcolors.mainGold,
                                size: 25,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    AppLocalizations.of(context)!.communityVideo,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                )
                              ]
                            ),
                            
                        )
                      ]
                    ),
                  )
                  
                ]
              )
          )
      ),
    );
  }
}