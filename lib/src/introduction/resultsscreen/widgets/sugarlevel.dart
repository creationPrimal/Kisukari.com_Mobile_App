

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class SugarLevelResults extends StatelessWidget {
  const SugarLevelResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      AppLocalizations.of(context)!.resultsSugarlevels,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Kcolors.lightGrey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                      
                          //before meal level title
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // before meal title
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_circle_right,
                                          size: 22,
                                          color: Kcolors.darkBlue,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            AppLocalizations.of(context)!.resultsBeforemeal,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                ),
                                // before meal level
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Text(
                                      '4.0-6.9 mmol/l',
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                ),
                            
                              ]
                            ),
                          ),

                          //before meal level scale
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            margin: const EdgeInsets.only(top: 20, bottom: 6),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 6,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainGreen,
                                        borderRadius: BorderRadius.circular(10)
                                      )
                                    ),
                                    Positioned(
                                      top: 0,
                                      child: 
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.85,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 6,
                                                width: MediaQuery.of(context).size.width * 0.2,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainGold,
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              ),
                                              Container(
                                                height: 6,
                                                width: MediaQuery.of(context).size.width * 0.4,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainRed,
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              )
                                            ]
                                          ),
                                        )
                                    ),
                                
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.85,
                                      margin: const EdgeInsets.only(top: 10, bottom: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width * 0.2,
                                            child: Text('4.0',
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              color: Kcolors.darkBlue,
                                              fontWeight: FontWeight.bold
                                            )
                                            )
                                          ),
                                          SizedBox(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width * 0.4,
                                            child: Text('6.9',
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              color: Kcolors.darkBlue,
                                              fontWeight: FontWeight.bold
                                            )
                                            )
                                          )
                                        ]
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),


                          //before meal level title
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // before meal title
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_circle_right,
                                          size: 22,
                                          color: Kcolors.darkBlue,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            AppLocalizations.of(context)!.resultsAftermeal,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                ),
                                // before meal level
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Text(
                                      '4.0-6.9 mmol/l',
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                ),
                            
                              ]
                            ),
                          ),

                          //after meal level scale
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 6,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainGreen,
                                        borderRadius: BorderRadius.circular(10)
                                      )
                                    ),
                                    Positioned(
                                      top: 0,
                                      child: 
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.85,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 6,
                                                width: MediaQuery.of(context).size.width * 0.2,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainGold,
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              ),
                                              Container(
                                                height: 6,
                                                width: MediaQuery.of(context).size.width * 0.4,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainRed,
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              )
                                            ]
                                          ),
                                        )
                                    ),
                                
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.85,
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width * 0.2,
                                            child: Text('4.0',
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              color: Kcolors.darkBlue,
                                              fontWeight: FontWeight.bold
                                            )
                                            )
                                          ),
                                          SizedBox(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width * 0.4,
                                            child: Text('6.9',
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              color: Kcolors.darkBlue,
                                              fontWeight: FontWeight.bold
                                            )
                                            )
                                          )
                                        ]
                                      ),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                      
                        ]
                      ),
                    ),
                  )

                    ],
                  )
                );
  }
}