


import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/src/more_section/intermittentfasting/widgets/fastingprotocals.dart';
import 'package:kisukari_mobile_app/src/more_section/intermittentfasting/widgets/fastingtips.dart';
import 'package:kisukari_mobile_app/src/more_section/intermittentfasting/widgets/fastingtopcontent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/fasting_report/fastingmainreport.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class FastingMainScreen extends StatefulWidget {
  const FastingMainScreen({super.key});

  @override
  State<FastingMainScreen> createState() => _FastingMainScreenState();
}

class _FastingMainScreenState extends State<FastingMainScreen> {

  int isToggled = 0;
  bool tipsScreen = false;
  bool protocalsScreen = false;

  void _alignCenterRedLine() { // center
    setState(() {
      isToggled = 1;
    });
  }
  void _alignLeftRedLine() { // left side
    setState(() {
      isToggled = 0;
    });
  }
  // void _alignRightRedLine() { // right side
  //   setState(() {
  //     isToggled = 2;
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
      backgroundColor: Kcolors.mainWhite,
      scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: 
          Text(
            AppLocalizations.of(context)!.fastingMainTitle,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )
          ),
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
          
              // top video
              const FastingTopContent(),
          
              // slider buttons
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: 
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // button 1
                          GestureDetector(
                            onTap: () {
                              _alignLeftRedLine(); // display protocals and align the red line to it
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(color: Kcolors.mainWhite),
                              child: 
                                Center(
                                  child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 35, width: 35,
                                          margin: const EdgeInsets.only(right: 10),
                                          child: Image.asset(Kicons.protocalsicon, fit: BoxFit.cover)
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.fastingProtocals,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                      ]
                                    )
                                ),
                            ),
                          ),
                          // button 2
                          GestureDetector(
                            onTap: () {
                              _alignCenterRedLine(); // display tips and align the red line to it
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(color: Kcolors.mainWhite),
                              child: 
                                Center(
                                  child:
                                    Row(
                                      children: [
                                         Container(
                                          height: 35, width: 35,
                                          margin: const EdgeInsets.only(right: 10),
                                          child: Image.asset(Kicons.tipsicon, fit: BoxFit.cover)
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.fastingTips,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                      ]
                                    )
                                ),
                            ),
                          ),
                          // button 3 for report
                          // GestureDetector(
                          //   onTap: () {
                          //     _alignRightRedLine(); // display report and align the red line to it
                          //   },
                          //   child: SizedBox(
                          //     height: 50,
                          //     width: MediaQuery.of(context).size.width * 0.3,
                          //     child: 
                          //       Center(
                          //         child:
                          //           Text(
                          //           AppLocalizations.of(context)!.homeFastreport,
                          //           style: GoogleFonts.roboto(
                          //             color: Kcolors.mainBlack,
                          //             fontSize: 20,
                          //             fontWeight: FontWeight.bold,
                          //           )
                          //         ),
                          //       ),
                          //   ),
                          // )
                        ]
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AnimatedAlign(
                                alignment: 
                                  // isToggled == 0 ? Alignment.centerLeft : isToggled == 1 ? Alignment.centerRight : isToggled == 2 ? Alignment.centerRight : Alignment.centerLeft, // this for all three togles + report
                                  isToggled == 0 ? Alignment.centerLeft :  Alignment.centerRight, // this for two toggles only protocals and tips
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                                child: Container(
                                  height: 3,
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    color: Kcolors.mainRed,
                                  )
                                ),
                              ),
                            )
                          ]
                        ),
                      )
                    ],
                  ),
              ),
          
              // displays below

              // if protocals is active
              if (isToggled == 0)
              const FastingProtocals(),

              // if tips is active
              if(isToggled == 1)
                FadeInRight(
                  animate: true,
                  duration: const Duration(milliseconds: 300),
                  child: const FastingTips()
                ),
          
              // if report is active
              if (isToggled == 2) 
                FadeInUp(
                  animate: true,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: const FastingMainReport()
                  ),
                ),
          
            ]
          ),
        )
    );
  }
}