


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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.edit_note,
                        color: Kcolors.mainBlack,
                        size: 33,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.78,
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
                    ],
                  ),
                 
                ]
              )
          )
      ),
    );
  }
}