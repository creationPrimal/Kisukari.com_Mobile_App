


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/bloodpressurelevel.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/bmilevel.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/calorieslevel.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/excerciselevelreading.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/sleeptime.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/sugarlevel.dart';

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
            const SugarLevelResults(),

            // blood pressure level readings
            const BloodPressureLevelResults(), 
            
            // calories level readings
            const CaloriesLevelResults(),

            // excercise level readings
            const ExcerciseLevelReadings(),

            // sleep duration
            const SleepTimeResult(),

            // bmi level
            const BmiLevelResults(),

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
                          fontSize: 22,
                          height: 1.2,
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
                          fontSize: 22,
                          height: 1.2,
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