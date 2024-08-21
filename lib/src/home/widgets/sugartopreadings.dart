

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Sugartopreadings extends StatelessWidget {
  const Sugartopreadings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Kcolors.mainWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [ 
            BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2, 
            blurRadius: 10,   
            offset: const Offset(0, 2),
          )
        ]
      ),
      child:
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              //left container
              Container(
                height: 170,
                width: MediaQuery.of(context).size.width * 0.58,
                decoration: BoxDecoration(
                  color: Kcolors.lightGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    
                        // top heading, time and button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: 
                              Row(
                                children: [

                                  Icon(Icons.water_drop_outlined,
                                  color: Kcolors.mainRed, 
                                  size: 19,
                                  ),
                                  Text(AppLocalizations.of(context)!.homesugar,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  )
                                  )

                                ]
                                
                              )
                            ),

                            SizedBox(
                              child: 
                                Row(
                                  children: [
                                    Icon(Icons.access_time,
                                    size:17,
                                    color: Kcolors.mainBlack
                                    ),
                                    Text('12:00',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500
                                    )
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      margin: const EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                        color: Kcolors.darkBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add,
                                          size: 16,
                                          color: Kcolors.mainWhite,
                                          ),
                                          padding: const EdgeInsets.all(0)
                                        
                                        ),
                                      ),
                                    )
                                  ]
                                )
                            )
                          ]
                        ),

                        // top main reading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('3.49',
                                      style: GoogleFonts.roboto(
                                        fontSize: 46,
                                        height: 1,
                                        color: Kcolors.mainRed,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                      Icon(Icons.arrow_downward,
                                      size: 29,
                                      color: Kcolors.mainRed
                                      )
                                    ],
                                  ),
                                  Text('mmol/l',
                                    textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        color: Kcolors.mainBlack,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),

                                ]
                              )
                            ),

                            SizedBox(
                              child:
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(AppLocalizations.of(context)!.averageA1C,
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        height: 1,
                                        color: Kcolors.mainBlack,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                      Icon(Icons.info_outlined,
                                      size: 16,
                                      color: Kcolors.mainBlack,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('5.5',
                                      style: GoogleFonts.roboto(
                                        fontSize: 25,
                                        height: 1,
                                        color: Kcolors.mainBlack,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                     Text('%',
                                      style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        color: Kcolors.darkBlue,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                    ],
                                  ),
                                  
                                  Text('( ${AppLocalizations.of(context)!.hometarget} < 6.5%)',
                                    textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        color: Kcolors.mainBlack,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),

                                ]
                              )
                            ),

                          ]
                        ),

                        // below alert
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Kcolors.mainWhite,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0, right: 5),
                                      child: FaIcon(FontAwesomeIcons.circleExclamation,
                                      size: 18,
                                      color: Kcolors.mainRed
                                      ),
                                    ),
                                    Text(AppLocalizations.of(context)!.homeLowSugarLevel,
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      height: 1,
                                      color: Kcolors.mainRed,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                    
                                  ],
                                ),

                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Kcolors.mainRed,
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child: 
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                                      child: Center(
                                        child: Text(AppLocalizations.of(context)!.homepressHere,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainWhite,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold
                                        )
                                        )
                                      ),
                                    )
                                )
                              ]
                            )
                        )
                    
                      ]
                    ),
                  )
              ),

              //Right containers
              SizedBox(
                height: 170,
                child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      // top container
                      Container(
                        height: 82,
                        width: MediaQuery.of(context).size.width * 0.31,
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 85,
                                      child: Text(AppLocalizations.of(context)!.homebloodpressure,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 13,
                                        height: 1,
                                        fontWeight: FontWeight.bold,
                                      )
                                      ),
                                    ),
                                    Container(
                                        height: 20,
                                        width: 20,
                                        margin: const EdgeInsets.only(left: 8),
                                        decoration: BoxDecoration(
                                          color: Kcolors.darkBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Center(
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.add,
                                            size: 16,
                                            color: Kcolors.mainWhite,
                                            ),
                                            padding: const EdgeInsets.all(0)
                                          
                                          ),
                                        ),
                                      )
                                  ]
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('192/100',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 22,
                                          height: 1,
                                          fontWeight: FontWeight.bold,
                                        )
                                        ),
                                        Text('mmHg',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        )
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: Icon(Icons.arrow_upward,
                                        size: 28,
                                        color: Kcolors.mainGold,
                                        ),
                                    )
                                  ]
                                ),
                              ]
                            ),
                          )
                      ),

                      //below container
                       Container(
                        height: 82,
                        width: MediaQuery.of(context).size.width * 0.31,
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child:
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(AppLocalizations.of(context)!.homeheartbeat,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                    
                                  ]
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('80',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 35,
                                          height: 1,
                                          fontWeight: FontWeight.bold,
                                        )
                                        ),
                                        Text('bpm',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        )
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      child: Icon(Icons.arrow_forward,
                                        size: 28,
                                        color: Kcolors.mainGreen,
                                        ),
                                    )
                                  ]
                                ),
                              ]
                            ),
                          )
                      )

                    ]
                  )
              )
          
            ]
          ),
        )
    );
  }
}