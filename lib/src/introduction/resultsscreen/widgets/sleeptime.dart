

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SleepTimeResult extends StatelessWidget {
  const SleepTimeResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Text(
                AppLocalizations.of(context)!.resultsleeptrackertitle,
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                  fontSize: 22,
                  height: 1.2,
                  color: Kcolors.mainBlack,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),

            // body
            Container(
              decoration: BoxDecoration(
                color: Kcolors.lightGrey,
                borderRadius: BorderRadius.circular(15)
              ),
              child:
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // progress bar
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: 
                              SizedBox(
                                height: 140,
                                width: 140,
                                child: 
                                  Center(
                                    child: CircularPercentIndicator(
                                      radius: 68.0,
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
                                              '8:12',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainRed,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                              )
                                            ),
                                            SizedBox(
                                              width: 100,
                                              child: Text(
                                                AppLocalizations.of(context)!.resultsleeptrackertotal,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  height: 1,
                                                  fontWeight: FontWeight.w600,
                                                )
                                              ),
                                            )
                                            
                                          ]
                                        ),
                                      circularStrokeCap: CircularStrokeCap.round,
                                      backgroundColor: Kcolors.darkBlue.withOpacity(0.3),
                                      progressColor: Kcolors.mainGreen,
                                    ),
                                  ),
                              ),
                            ),
                    
                            // time range
                            SizedBox(
                              height: 140,
                              child: Row(
                                children: [
                                  //range line
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      FaIcon(FontAwesomeIcons.moon, color:Kcolors.mainBlack, size: 23),
                                      const Text('|'),
                                      const Text('|'),
                                      const Text('|'),
                                      const Text('|'),
                                      const Text('|'),
                                      Icon(Icons.wb_sunny, color:Kcolors.mainBlack, size: 23),
                                    ]
                                  ),
                                  // time
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // sleep
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '11:00 PM', 
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 27,
                                                height: 1.2,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            Text(
                                              AppLocalizations.of(context)!.resultsleeptrackersleeping, 
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 17,
                                                height: 1.2,
                                              )
                                            )
                                          ]
                                        ),
                                        // wakeup
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '08:00 AM', 
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 27,
                                                height: 1.2,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            Text(
                                              AppLocalizations.of(context)!.resultsleeptrackerwakeup, 
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 17,
                                                height: 1.2,
                                              )
                                            )
                                          ]
                                        )
                                      ]
                                    ),
                                  )
                                ]
                              ),
                            )
                          ]
                        )
                    ),
                    // bed icon
                    Positioned(
                      top:5, left: 8,
                      child:
                        SizedBox(
                          height: 20,
                          child:
                            Image.asset(Kicons.bedicon, fit: BoxFit.cover)
                        )
                    )
                  ],
                )
            )
          ]
        )
    );
  }
}