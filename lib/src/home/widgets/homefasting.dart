

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeFasting extends StatelessWidget {
  const HomeFasting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           // title
          SizedBox(
            child: 
            Text(
              AppLocalizations.of(context)!.homeFastTitle,
              style: GoogleFonts.roboto(
                color: Kcolors.mainBlack,
                fontSize: 19,
                fontWeight: FontWeight.bold
              )
            ),
          ),

          // body
          Container(
            margin: const EdgeInsets.only(top:15),
            decoration: BoxDecoration(
              color: Kcolors.lightGrey,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1, 
                  blurRadius: 2,   
                  offset: const Offset(0, 2),
                )
              ]
            ),
            child: 
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8, bottom: 14),
                child: Column(
                  children: [
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        // left side
                        SizedBox(
                          child: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 6.0),
                                  child: Text(AppLocalizations.of(context)!.homeFastType,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  )
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Kcolors.mainGold,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: 
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '12',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 30,
                                            height: 1,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.homeFasthours,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            height: 1,
                                            fontWeight: FontWeight.w500,
                                          )
                                        )
                                      ]
                                    )
                                ),

                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: 
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.homeFaststart,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                        Text(
                                          '${AppLocalizations.of(context)!.homeFasttoday}, 20:04',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            height: 1,
                                            fontWeight: FontWeight.bold,
                                          )
                                        )
                                      ]
                                    )
                                )
                              ]
                            )
                        ),

                        // middle part
                        SizedBox(
                          height: 120,
                          width: 120,
                          child: 
                            Center(
                              child: CircularPercentIndicator(
                                radius: 58.0,
                                animation: true,
                                animationDuration: 500,
                                lineWidth: 15.0,
                                percent: 0.7,
                                center: 
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.homeCliniccounterremaining,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 14,
                                          height: 1,
                                          fontWeight: FontWeight.w600,
                                        )
                                      ),
                                      Text(
                                        '14:57:46',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      
                                    ]
                                  ),
                                circularStrokeCap: CircularStrokeCap.round,
                                backgroundColor: Kcolors.darkBlue.withOpacity(0.3),
                                progressColor: Kcolors.mainGreen,
                              ),
                            ),
                        ),

                        // right side
                        SizedBox(
                          child: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 6.0),
                                  child: Text(AppLocalizations.of(context)!.homeFastreport,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  )
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: 
                                    Icon(Icons.calendar_month,
                                    size: 64,
                                    color: Kcolors.lightGreen
                                    )
                                ),

                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: 
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.homeFastend,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                        Text(
                                          '10 July, 7:51',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            height: 1,
                                            fontWeight: FontWeight.bold,
                                          )
                                        )
                                      ]
                                    )
                                )
                              ]
                            )
                        ),

                      ]
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Kcolors.mainRed,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
                          child: Text(
                            AppLocalizations.of(context)!.homeFastendfast,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            )
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