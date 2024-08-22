

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FastingTopReadings extends StatelessWidget {
  const FastingTopReadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: Kcolors.lightGrey.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child:  
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                  
                      Text(
                        AppLocalizations.of(context)!.reportfastingtotalhours,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                      Text(
                        '42',
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainRed,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      Text(
                        '${AppLocalizations.of(context)!.reportfastingminutes}: 13',
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                    ],
                  ),
                )
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Kcolors.mainGold,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: 
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.reportfastingincomplete,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )
                          ),
                          Text(
                            '48%',
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              height: 1
                            )
                          )
                        ]
                      ),
                    )
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    color: Kcolors.mainGreen,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: 
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.reportfastingcompleted,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )
                          ),
                          Text(
                            '52%',
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              height: 1
                            )
                          )
                        ]
                      ),
                    )
                )
              ]
            )

          ],
        )
    );
  }
}