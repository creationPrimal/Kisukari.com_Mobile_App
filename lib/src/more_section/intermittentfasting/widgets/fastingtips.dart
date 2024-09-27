


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FastingTips extends StatelessWidget {
  const FastingTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
      child:
        Column(
          children: [
            // top title
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.fastingTipstopTitle,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainBlack,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child:
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 19,
                            height: 1.2,
                          )
                        )
                    )
                  ],
                )
            ),

            // tips
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 10),
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        AppLocalizations.of(context)!.fastingTipssubTitle,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    // tips
                    Column(
                      children: List.generate(
                        4, (index) {
                          return
                            Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: 
                              Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    margin: const EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Kcolors.lightGrey, // remove this when adding image
                                    ),
                                    /* child: // uncomment this when adding image
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child:
                                          Image.asset(
                                            '',
                                            fit: BoxFit.cover,
                                          )
                                      ) */

                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.75,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Getting Started',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.darkBlue,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          )
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur elit. Sed do eiusmod temp incididunt ut labore ',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 18,
                                            height: 1.2,
                                          )
                                        ),
                                      ]
                                    ),
                                  )
                                ]
                              )

                            );
                        }
                      )
                    )
                  ]
                )
            )

          ],
        )
    );
  }
}