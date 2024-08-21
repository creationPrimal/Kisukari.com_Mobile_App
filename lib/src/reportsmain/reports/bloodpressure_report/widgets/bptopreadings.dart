

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BpTopReadings extends StatefulWidget {
  const BpTopReadings({super.key});

  @override
  State<BpTopReadings> createState() => _BpTopReadingsState();
}

class _BpTopReadingsState extends State<BpTopReadings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: 
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                //pressure
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.45,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.reportBptopreadingAvBp,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '120/80',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainRed,
                                          fontSize: 42,
                                          height: 1,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                       Text(
                                        'mmHg',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 20,
                                          height: 1,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.arrow_forward,
                                    size: 27,
                                    color: Kcolors.mainGreen
                                    ),
                                  )
                                ]
                              ),
                             
                            ]
                          ),
                          Text(
                            '(${AppLocalizations.of(context)!.hometarget}: < 130/80 mmHg)',
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ]
                      ),
                    ),
                ),
            
                // bpm
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.45,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.reportBptopreadingHeartBeat,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '120',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainRed,
                                          fontSize: 42,
                                          height: 1,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                       Text(
                                        'bpm',
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 20,
                                          height: 1,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Icon(Icons.arrow_upward,
                                    size: 27,
                                    color: Kcolors.mainGold
                                    ),
                                  )
                                ]
                              ),
                             
                            ]
                          ),
                          Text(
                            '(${AppLocalizations.of(context)!.hometarget}: 60 - 100 bpm)',
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ]
                      ),
                    ),
                )
            
              ]
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.305,
                    decoration: BoxDecoration(
                      color: Kcolors.mainRed
                    ),
                    child:
                      Center(
                        child: Text(
                          '32%',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          )
                        )
                      )
                  ),
                   Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.305,
                    decoration: BoxDecoration(
                      color: Kcolors.mainGreen
                    ),
                    child:
                      Center(
                        child: Text(
                          '34%',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          )
                        )
                      )
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.305,
                    decoration: BoxDecoration(
                      color: Kcolors.mainGold
                    ),
                    child:
                      Center(
                        child: Text(
                          '34%',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainWhite,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                          )
                        )
                      )
                  )
                ]
              ),
            )
          ],
        )
    );
  }
}