

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeReportGraphs extends StatelessWidget {
  const HomeReportGraphs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // title
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child:
                Text(
                  AppLocalizations.of(context)!.homeGraphsTitle,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainBlack,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  )
                )
            ),

            //graphs slider
            Container(
              decoration: BoxDecoration(
                color: Kcolors.mainWhite,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2, 
                    blurRadius: 10,   
                    offset: const Offset(0, 2),
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child:
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 300,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Kcolors.mainBlack.withOpacity(0.1),
                                    spreadRadius: 0.5,
                                    blurRadius: 0.4,
                                    offset: const Offset(1 , 2)
                                  )
                                ]
                              )
                            ),

                            Container(
                              height: 200,
                              width: 300,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Kcolors.mainBlack.withOpacity(0.1),
                                    spreadRadius: 0.5,
                                    blurRadius: 0.4,
                                    offset: const Offset(1 , 2)
                                  )
                                ]
                              )
                            ),


                          ]
                        ),
                    )
                ),
              ),
            )
        
          ]
        )
    );
  }
}