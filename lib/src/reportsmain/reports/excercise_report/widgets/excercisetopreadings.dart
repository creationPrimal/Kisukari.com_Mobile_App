


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExcerciseTopReadings extends StatelessWidget {
  const ExcerciseTopReadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Kcolors.mainWhite,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  AppLocalizations.of(context)!.reportexcerciseweeklysnap,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  // left side
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
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
                            Text(
                              AppLocalizations.of(context)!.reportexcercisecalorie,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${AppLocalizations.of(context)!.reportexcerciseburnt}:',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 16,
                                      )
                                    ),
                                    Text(
                                      '${AppLocalizations.of(context)!.reportexcerciseweeklytarget}:',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 16,
                                      )
                                    ),
                                  ]
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '13424',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      Text(
                                        '82972',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ]
                                  ),
                                )
                              ]
                            ),
                            Container(
                              margin: const EdgeInsets.only(top:10),
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4, right: 10, left: 10),
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '-892',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      SizedBox(
                                        child:
                                          Row(
                                            children: [
                                              Text(
                                                '(34%',
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                              Icon(Icons.arrow_downward,
                                              color: Kcolors.mainRed,
                                              size: 20,
                                              ),
                                              Text(
                                                ')',
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                            ]
                                          )
                                      )
                                    ]
                                  ),
                                )
                            )
                          ]
                        ),
                      ),
                  ),
                  // right side
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
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
                            Text(
                              AppLocalizations.of(context)!.reportexcercisesteps,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${AppLocalizations.of(context)!.reportexcercisewalked}:',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 16,
                                      )
                                    ),
                                    Text(
                                      '${AppLocalizations.of(context)!.reportexcerciseweeklytarget}:',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 16,
                                      )
                                    ),
                                  ]
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '13424',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      Text(
                                        '82972',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ]
                                  ),
                                )
                              ]
                            ),
                            Container(
                              margin: const EdgeInsets.only(top:10),
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4, right: 10, left: 10),
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '-457',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      SizedBox(
                                        child:
                                          Row(
                                            children: [
                                              Text(
                                                '(14%',
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                              Icon(Icons.arrow_upward,
                                              color: Kcolors.mainGold,
                                              size: 20,
                                              ),
                                              Text(
                                                ')',
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                            ]
                                          )
                                      )
                                    ]
                                  ),
                                )
                            )
                          ]
                        ),
                      ),
                  )
                ]
              ),

              Container(
                margin: const EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                child:  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //activities
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 0.3,
                              offset: const Offset(0, 2)
                            )
                          ]
                        ),
                        child: 
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4, left: 6, right: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.reportexcerciseactivities,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 0.0),
                                   child: Text(
                                    '2',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                                                   ),
                                 ),
                              ]
                            ),
                          )
                      ),
                      //Time
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 0.3,
                              offset: const Offset(0, 2)
                            )
                          ]
                        ),
                        child: 
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4, left: 6, right: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.reportexcercisetime,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 0.0),
                                   child: Text(
                                    '2:16:00',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                                                   ),
                                 ),
                              ]
                            ),
                          )
                      ),
                      //steps
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 0.3,
                              offset: const Offset(0, 2)
                            )
                          ]
                        ),
                        child: 
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4, left: 6, right: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.reportexcercisesteps,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 0.0),
                                   child: Text(
                                    '10,000',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                 ),
                              ]
                            ),
                          )
                      ),
                      //distance
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 0.3,
                              offset: const Offset(0, 2)
                            )
                          ]
                        ),
                        child: 
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4, left: 6, right: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.reportexcercisedistance,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 0.0),
                                   child: Text(
                                    '15.5km',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                                                   ),
                                 ),
                              ]
                            ),
                          )
                      ),
                      //activities
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 0.3,
                              offset: const Offset(0, 2)
                            )
                          ]
                        ),
                        child: 
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0, bottom: 4, left: 6, right: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.reportexcerciseburntcalories,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 0.0),
                                   child: Text(
                                    '2240kj',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                                                   ),
                                 ),
                              ]
                            ),
                          )
                      )
                    ]
                  ),
              )
            ]
          ),
        )
    );
  }
}