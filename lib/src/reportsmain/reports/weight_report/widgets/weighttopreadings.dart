


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeightTopReadings extends StatelessWidget {
  const WeightTopReadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.reportweightmyprogress,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainBlack,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Row(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: Kcolors.mainWhite,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 15, bottom: 15),
                            child: Column(
                              children: [
                                Text(
                                  '0',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 40,
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                Text(
                                  'cm',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 25,
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                
                              ]
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          margin: const EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                            color: Kcolors.mainWhite,
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 9.0, right: 9, top: 15, bottom: 15),
                            child: Column(
                              children: [
                                Text(
                                  '-4',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainGreen,
                                    fontSize: 40,
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                Text(
                                  'Kg',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 25,
                                    height: 1,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                                
                              ]
                            ),
                          ),
                        )
                      ]
                    )
                  ]
                ),
              ),

              SizedBox(
                child: 
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Kcolors.mainRed,
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child:  
                      Center(
                        child: 
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '28.2',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainWhite,
                                  fontSize: 30,
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                              Text(
                                'Kg/m\u00B2',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainWhite,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ]
                          )
                      ),
                  )
              )
            ]
          ),
        ),
    );
  }
}