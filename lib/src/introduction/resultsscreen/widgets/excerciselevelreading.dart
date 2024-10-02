

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class ExcerciseLevelReadings extends StatelessWidget {
  const ExcerciseLevelReadings({super.key});

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
                      child: Text(
                        AppLocalizations.of(context)!.resultsExcerciselevels,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          height: 1.2,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 170,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Kcolors.lightGrey,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: 
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Text(AppLocalizations.of(context)!.resultssteps,
                                    textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainRed,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )
                                    )
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: 
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 70,
                                            margin: const EdgeInsets.only(right: 8),
                                            child: Image.asset(
                                              Kicons.runningshoeIconIntro,
                                              fit: BoxFit.cover
                                            )
                                          ),
                                          // Text('6578',
                                          // style: GoogleFonts.roboto(
                                          //   color: Kcolors.mainBlack,
                                          //   fontSize: 30,
                                          //   fontWeight: FontWeight.bold
                                          // )
                                          // )
                                        ]
                                      )
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        // Text(
                                        //   AppLocalizations.of(context)!.resultsExcercisetarget,
                                        //   style: GoogleFonts.roboto(
                                        //     color: Kcolors.mainBlack,
                                        //     fontSize: 15,
                                        //     fontWeight: FontWeight.bold,
                                        //   )
                                        // ),
                                        Text(
                                          AppLocalizations.of(context)!.resultsExcercisetarget2,
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 18,
                                            height: 1.3,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                        // Stack(
                                        //   children: [
                                        //     Container(
                                        //       height: 12,
                                        //       margin: const EdgeInsets.only(top: 5),
                                        //       decoration: BoxDecoration(
                                        //         color: Kcolors.mainWhite,
                                        //         borderRadius: BorderRadius.circular(15)
                                        //       )
                                        //     ),
                                        //     Positioned(
                                        //       top: 0,
                                        //       child:
                                        //         Container(
                                        //           height: 12,
                                        //           width: MediaQuery.of(context).size.width * 0.3,
                                        //           margin: const EdgeInsets.only(top: 5),
                                        //           decoration: BoxDecoration(
                                        //             color: Kcolors.mainRed,
                                        //             borderRadius: BorderRadius.circular(15)
                                        //           )
                                        //         )
                                        //     )
                                        //   ]
                                        // )
                                      ],
                                    )
                                  )
                                ]
                              ),
                            )
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 170,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Kcolors.lightGrey,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  child: Text(AppLocalizations.of(context)!.resultExcercise,
                                  textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                  )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      margin: const EdgeInsets.only(bottom: 4, right: 8),
                                      child: Center(
                                        child: Image.asset(
                                          Kicons.coloredrunningIconIntro,
                                          fit: BoxFit.cover
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  child: Text(AppLocalizations.of(context)!.resultExcercisetime,
                                  textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )
                                  )
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  margin: const EdgeInsets.only(bottom: 4),
                                  child: Text(AppLocalizations.of(context)!.resultExcerciselevelmedium,
                                  textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 14,
                                    )
                                  )
                                ),
                              ]
                            ),
                          ),
                        )

                      ]
                    )

                  ]
                )
            );
  }
}