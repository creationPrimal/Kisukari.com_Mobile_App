

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ClinicTopReadings extends StatefulWidget {
  const ClinicTopReadings({super.key});

  @override
  State<ClinicTopReadings> createState() => _ClinicTopReadingsState();
}

class _ClinicTopReadingsState extends State<ClinicTopReadings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Kcolors.lightGrey,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Kcolors.mainBlack.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2)
          )
        ]
      ),
      child:  
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                AppLocalizations.of(context)!.reportclinicremainingdays,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:4.0, right: 3, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              
                  // counter progress bar        
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: 
                    SizedBox(
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.29,
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
                                    AppLocalizations.of(context)!.homeCliniccounterdays,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 14,
                                      height: 1,
                                      fontWeight: FontWeight.w600,
                                    )
                                  ),
                                  Text(
                                    '14',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.homeCliniccounterremaining,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 14,
                                      height: 1,
                                      fontWeight: FontWeight.w600,
                                    )
                                  )
                                  
                                ]
                              ),
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Kcolors.darkBlue.withOpacity(0.3),
                            progressColor: Kcolors.mainRed,
                          ),
                        ),
                    ),
                  ),
              
                  // names location date and more
                  SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.55,
                    child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // hospital name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on_outlined,
                              size: 17,
                              color: Kcolors.lightGreen
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${AppLocalizations.of(context)!.homeHospitalname}: ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ),
                                        TextSpan(
                                          text: 'Muhimbili',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.darkBlue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                              )
                            ]
                          ),
            
                          // last attendance date
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.calendar_month,
                              size: 17,
                              color: Kcolors.lightGreen
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${AppLocalizations.of(context)!.homeHospitallastvisit}: ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ),
                                        TextSpan(
                                          text: '20 March, 2024',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.darkBlue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                              )
                            ]
                          ),
            
                          // upcoming date
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.calendar_month,
                              size: 17,
                              color: Kcolors.lightGreen
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '${AppLocalizations.of(context)!.homeHospitalupcomingdate}: ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ),
                                        TextSpan(
                                          text: '20 April, 2024',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.darkBlue,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )
                                        )
                                      ]
                                    )
                                  ),
                                ),
                              )
                            ]
                          ),
            
                          
                        ]
                      )
                  )
                              
                ]
              ),
            ),
          ],
        ),
    );
  }
}