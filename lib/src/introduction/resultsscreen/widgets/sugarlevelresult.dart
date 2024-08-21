


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Sugarlevelresult extends StatefulWidget {
  const Sugarlevelresult({super.key});

  @override
  State<Sugarlevelresult> createState() => _SugarlevelresultState();
}

class _SugarlevelresultState extends State<Sugarlevelresult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // sugar level readings
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      AppLocalizations.of(context)!.resultsSugarlevels,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
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
                      
                          //before meal level title
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // before meal title
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_circle_right,
                                          size: 22,
                                          color: Kcolors.darkBlue,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            AppLocalizations.of(context)!.resultsBeforemeal,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                ),
                                // before meal level
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Text(
                                      '4.0-6.9 mmol/l',
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                ),
                            
                              ]
                            ),
                          ),

                          //before meal level scale
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            margin: const EdgeInsets.only(top: 20, bottom: 6),
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
                                      margin: const EdgeInsets.only(top: 10, bottom: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                            width: MediaQuery.of(context).size.width * 0.2,
                                            child: Text('4.0',
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
                                            child: Text('6.9',
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


                          //before meal level title
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.85,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // before meal title
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Row(
                                      children: [
                                        Icon(Icons.arrow_circle_right,
                                          size: 22,
                                          color: Kcolors.darkBlue,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            AppLocalizations.of(context)!.resultsAftermeal,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                        )
                                      ],
                                    ),
                                ),
                                // before meal level
                                SizedBox(
                                  width: MediaQuery.of(context).size.width* 0.4,
                                  child:
                                    Text(
                                      '4.0-6.9 mmol/l',
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                ),
                            
                              ]
                            ),
                          ),

                          //after meal level scale
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            margin: const EdgeInsets.only(top: 20),
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
                                            child: Text('4.0',
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
                                            child: Text('6.9',
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
                ),

            // blood pressure level readings
            Container(
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
                        fontSize: 20,
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
                ),
            
            // calories level readings
            Container(
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
                          fontSize: 20,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.42,
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
                    
                        Container(
                          height: 150,
                          width: 4,
                          decoration: BoxDecoration(
                            color: Kcolors.lightGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                    
                        SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.42,
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
                    
                      ]
                    ),
                  ],
                )
            ),

            // excercise level readings
            Container(
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
                        AppLocalizations.of(context)!.resultsExcerciselevels,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 170,
                          margin: const EdgeInsets.only(top: 10),
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
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Text(AppLocalizations.of(context)!.resultssteps,
                                    textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainRed,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )
                                    )
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: 
                                      Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            margin: const EdgeInsets.only(right: 8),
                                            child: Image.asset(
                                              Kicons.runningshoeIconIntro,
                                              fit: BoxFit.cover
                                            )
                                          ),
                                          Text('6578',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold
                                          )
                                          )
                                        ]
                                      )
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.resultsExcercisetarget,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.resultsExcercisetarget2,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 15,
                                          )
                                        ),
                                        Stack(
                                          children: [
                                            Container(
                                              height: 12,
                                              margin: const EdgeInsets.only(top: 5),
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(15)
                                              )
                                            ),
                                            Positioned(
                                              top: 0,
                                              child:
                                                Container(
                                                  height: 12,
                                                  width: MediaQuery.of(context).size.width * 0.3,
                                                  margin: const EdgeInsets.only(top: 5),
                                                  decoration: BoxDecoration(
                                                    color: Kcolors.mainRed,
                                                    borderRadius: BorderRadius.circular(15)
                                                  )
                                                )
                                            )
                                          ]
                                        )
                                      ],
                                    )
                                  )
                                ]
                              ),
                            )
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.43,
                          height: 170,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Kcolors.lightGrey,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  child: Text(AppLocalizations.of(context)!.resultExcercise,
                                  textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainRed,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    )
                                  )
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      margin: const EdgeInsets.only(bottom: 4, right: 8),
                                      child: Center(
                                        child: Image.asset(
                                          Kicons.coloredrunningIconIntro,
                                          fit: BoxFit.cover
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  child: Text(AppLocalizations.of(context)!.resultExcercisetime,
                                  textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )
                                  )
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.40,
                                  margin: const EdgeInsets.only(bottom: 4),
                                  child: Text(AppLocalizations.of(context)!.resultExcerciselevelmedium,
                                  textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 14,
                                    )
                                  )
                                ),
                              ]
                            ),
                          ),
                        )

                      ]
                    )

                  ]
                )
            ),

            Container(
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
                          fontSize: 20,
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
            ),

            Container(
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
                        AppLocalizations.of(context)!.resultGraphtitle,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: 
                        Image.asset(
                          Kicons.resultsgraphIconIntro,
                          fit: BoxFit.contain
                        )
                    )

                  ]
                )
            ),

            Container(
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
                        AppLocalizations.of(context)!.resultAddictiontitle,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: 
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: 
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        margin: const EdgeInsets.only(right: 4),
                                        child: Image.asset(
                                          Kicons.nosmokingIconIntro,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.6,
                                      child: Text(
                                        AppLocalizations.of(context)!.resultAddictioncigarette,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 16,
                                          height: 1.3,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    )
                                  ]
                                )
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 8, bottom: 8),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: 
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        margin: const EdgeInsets.only(right: 4),
                                        child: Image.asset(
                                          Kicons.noalcoholIconIntro,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.7,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppLocalizations.of(context)!.resultAddictioncialcoholtitle,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 16,
                                              height: 1.3,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!.resultAddictioncialcoholsub1,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 16,
                                              height: 1.3,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!.resultAddictioncialcoholsub2,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 16,
                                              height: 1.3,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ],
                                      ),
                                    )
                                  ]
                                )
                            )
                          ]
                        )
                    )

                  ]
                )
            )

          ],
        )
    );
  }
}