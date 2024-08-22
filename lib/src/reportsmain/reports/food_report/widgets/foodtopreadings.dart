


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/food_report/widgets/foodpiechart.dart';

class FoodTopReadings extends StatefulWidget {
  const FoodTopReadings({super.key});

  @override
  State<FoodTopReadings> createState() => _FoodTopReadingsState();
}

class _FoodTopReadingsState extends State<FoodTopReadings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child:  
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                // left side
                Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: Kcolors.lightGrey.withOpacity(0.6),
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
                                    AppLocalizations.of(context)!.reportexcerciseate,
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
                                      '3424',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Text(
                                      '5672',
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
                                      '+772',
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
                                              '(27%',
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
                ),
            
                // piechart
                Container(
                  height: 140, // if indicators is to be displayed increase it to 180
                  width: 185,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: 
                    const FoodPieChart(),
                )
                     
            
              ]
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 5, bottom: 10),
              decoration: BoxDecoration(
                color: Kcolors.lightGrey.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 105,
                        child:
                          Column(
                            children: [
                              Text(
                                '23%',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.darkBlue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                )
                              ),
                              Text(
                                '11.1g',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )
                              ),
                              Text(
                                AppLocalizations.of(context)!.homeFullCarbohydrate,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack.withOpacity(0.6),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                )
                              )
                            ]
                          )
                      ),
                      SizedBox(
                        width: 105,
                        child:
                          Column(
                            children: [
                              Text(
                                '25%',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainGreen,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                )
                              ),
                              Text(
                                '11.6g',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )
                              ),
                              Text(
                                AppLocalizations.of(context)!.homeFat,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack.withOpacity(0.6),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                )
                              )
                            ]
                          )
                      ),
                      SizedBox(
                        width: 105,
                        child:
                          Column(
                            children: [
                              Text(
                                '25%',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainGold,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                )
                              ),
                              Text(
                                '3.6g',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )
                              ),
                              Text(
                                AppLocalizations.of(context)!.homeProtein,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack.withOpacity(0.6),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                )
                              )
                            ]
                          )
                      )
                    ]
                  ),
                )
            )
          ],
        )
    );
  }
}