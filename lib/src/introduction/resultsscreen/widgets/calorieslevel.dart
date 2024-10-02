

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class CaloriesLevelResults extends StatelessWidget {
  const CaloriesLevelResults({super.key});

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
                        AppLocalizations.of(context)!.resultsCalorieslevels,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Kcolors.lightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 95,
                                  height: 85,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: 
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(Kicons.resultfoodIconIntro,
                                      fit: BoxFit.cover
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.resultsFoodCalorie1,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        TextSpan(
                                          text: ' 5230 ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.resultsFoodCalorie2,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                )
                              ]
                            )
                      
                          ),
                      
                          //separator
                          Container(
                            height: 150,
                            width: 4,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Kcolors.lightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          // excercise
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Kcolors.lightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 95,
                                  height: 85,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: 
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(Kicons.cyclingIconIntro,
                                      fit: BoxFit.cover
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.resultsExcerciseCalorie1,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        TextSpan(
                                          text: ' 4391 ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.resultsExcerciseCalorie2,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                )
                              ]
                            )
                      
                          ),

                          Container(
                            height: 150,
                            width: 4,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Kcolors.lightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          // water
                          Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                              color: Kcolors.lightGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 95,
                                  height: 85,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: 
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(Kicons.waterglassicon,
                                      fit: BoxFit.cover
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.resultsExcerciseWater1,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        TextSpan(
                                          text: ' 4 ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        TextSpan(
                                          text: AppLocalizations.of(context)!.resultsExcerciseWater2,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                )
                              ]
                            )
                      
                          ),
                      
                        ]
                      ),
                    ),
                  ],
                )
            );
  }
}