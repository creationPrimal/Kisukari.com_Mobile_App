
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class BloodPressureLevelResults extends StatelessWidget {
  const BloodPressureLevelResults({super.key});

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
                      AppLocalizations.of(context)!.resultsbplevels,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        height: 1.2,
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
                      
                          
                          SizedBox(
                            width: MediaQuery.of(context).size.width* 0.85,
                            child:
                              Text(
                                '130/80-139/89 mmHg',
                                textAlign: TextAlign.end,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.darkBlue,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                          ),

                          //after meal level scale
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            margin: const EdgeInsets.only(top: 10),
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
                                            child: Text('130/80',
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
                                            child: Text('139/89',
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