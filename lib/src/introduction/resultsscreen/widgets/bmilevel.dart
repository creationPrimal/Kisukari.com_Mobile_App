

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiLevelResults extends StatelessWidget {
  const BmiLevelResults({super.key});

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
                        AppLocalizations.of(context)!.resultWeightLevels,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.46,
                                child: Column(
                                  children: [
                                    
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 26,
                                          width: MediaQuery.of(context).size.width * 0.06,
                                          child: Image.asset(
                                            Kicons.weightscaleIconIntro,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          child: 
                                            Text('BMI',
                                            textAlign: TextAlign.center,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                        )
                                      ]
                                    ),

                                    Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width * 0.46,
                                      margin: const EdgeInsets.only(top: 8),
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainWhite,
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                                      child:
                                        Center(
                                          child: Text('31.7 kg/m\u00B2',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold
                                          )
                                          )
                                        )
                                    )

                                  ]
                                ),
                              ),

                              Container(
                                height: 85,
                                width: MediaQuery.of(context).size.width * 0.38,
                                decoration: BoxDecoration(
                                  color: Kcolors.mainWhite,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: 
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          child: 
                                            Row(
                                              children: [
                                                Container(
                                                  height: 20,
                                                  width: 20,
                                                  margin: const EdgeInsets.only(right: 8),
                                                  child: Image.asset(
                                                    Kicons.reddangerIconIntro
                                                  ),
                                                ),
                                                Text(AppLocalizations.of(context)!.resultHighWeightLevels,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainRed,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold
                                                )
                                                )
                                              ]
                                            )
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: Container(
                                            height: 1,
                                            decoration: BoxDecoration(
                                              color: Kcolors.lightGrey,
                                            ),
                                          ),
                                        ),

                                        Text(AppLocalizations.of(context)!.resultWeightminimize,
                                        textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold
                                          )
                                          )

                                      ]
                                    ),
                                  )
                              )
                            ]
                          ),
                        )
                    )

                  ]
                )
            );
  }
}