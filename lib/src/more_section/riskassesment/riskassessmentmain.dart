

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/utils/loaders/testloader.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RiskAssessment extends StatefulWidget {
  const RiskAssessment({super.key});

  @override
  State<RiskAssessment> createState() => _RiskAssessmentState();
}

class _RiskAssessmentState extends State<RiskAssessment> {

  bool _isLoading = true; // loader screen

    @override
    void initState() {
      loadScreen();
      super.initState();
    }
    Future<void> loadScreen() async {
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        _isLoading = false;
      });
    }


  @override
  Widget build(BuildContext context) {

    // measurements
    double width = ScreenSize.screenWidth(context);

    return Scaffold(
      body:

        _isLoading ?
        const TestLoader() // initiate loader before opening the screen
        :
        Stack(
          children: [
            // background
            Positioned.fill(
              child: Image.asset(Kimages.riskassessmentbg, fit: BoxFit.cover),
            ),
            // black color
            Positioned.fill(
              child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5)
              ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15, left: 15),
              child: CustomScrollView(
              slivers: [
                // appBar
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  leadingWidth: 40,
                  toolbarHeight: 40,
                  leading: Container(
                    height: 40, width: 40,
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child:
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ButtonStyle(
                          padding: WidgetStateProperty.all(const EdgeInsets.all(0),)
                        ),
                        icon: Icon(Icons.arrow_back_ios_new_outlined, color: Kcolors.mainBlack, size: 22)
                      )
                  ),
                  title:
                    Text(
                      AppLocalizations.of(context)!.morescreenTestTitle,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      )
                    )
                ),


                // body
                SliverToBoxAdapter(
                  child: 
                    Container(
                      margin: const EdgeInsets.only(top: 30,),
                      child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //body
                            Text(
                              AppLocalizations.of(context)!.risktestassessmentbody,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainWhite,
                                fontSize: 20,
                                height: 1.3,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            // buttons
                            Container(
                              margin: const EdgeInsets.only(top: 20,),
                              child: 
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                          // sugar risk
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context, sugarassessment);
                                            },
                                            child: Container(
                                              height: 170,
                                              width: width * 0.42,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: 
                                                Padding(
                                                  padding: const EdgeInsets.all(8),
                                                  child:
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        // image
                                                        SizedBox(
                                                          height: 60, width: 60,
                                                          child: Image.asset(Kicons.glucometerIcon, fit: BoxFit.cover)
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0),
                                                          child: Text(
                                                            AppLocalizations.of(context)!.risktestsugartest,
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack, fontSize: 19, height: 1.2, fontWeight: FontWeight.w700,
                                                            )
                                                          ),
                                                        )
                                                      ]
                                                    )
                                                )
                                            ),
                                          ),
                                          // wounds risk
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context, woundstest);
                                            },
                                            child: Container(
                                              height: 170,
                                              width: width * 0.42,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: 
                                                Padding(
                                                  padding: const EdgeInsets.all(8),
                                                  child:
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        // image
                                                        SizedBox(
                                                          height: 60, width: 60,
                                                          child: Image.asset(Kicons.nervesIcon, fit: BoxFit.cover)
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0),
                                                          child: Text(
                                                            AppLocalizations.of(context)!.risktestwoundstest,
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack, fontSize: 19, height: 1.2, fontWeight: FontWeight.w700,
                                                            )
                                                          ),
                                                        )
                                                      ]
                                                    )
                                                )
                                            ),
                                          )
                                        ]
                                      ),
                                    ),


                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                          // mental risk
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context, mentalassessment);
                                            },
                                            child: Container(
                                              height: 170,
                                              width: width * 0.42,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: 
                                                Padding(
                                                  padding: const EdgeInsets.all(8),
                                                  child:
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        // image
                                                        SizedBox(
                                                          height: 60, width: 60,
                                                          child: Image.asset(Kicons.brainIcon, fit: BoxFit.cover)
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0),
                                                          child: Text(
                                                            AppLocalizations.of(context)!.risktestmental,
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack, fontSize: 19, height: 1.2, fontWeight: FontWeight.w700,
                                                            )
                                                          ),
                                                        )
                                                      ]
                                                    )
                                                )
                                            ),
                                          ),
                                          // heart risk
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context, heartassessment);
                                            },
                                            child: Container(
                                              height: 170,
                                              width: width * 0.42,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: 
                                                Padding(
                                                  padding: const EdgeInsets.all(8),
                                                  child:
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        // image
                                                        SizedBox(
                                                          height: 60, width: 60,
                                                          child: Image.asset(Kicons.heartassesIcon, fit: BoxFit.cover)
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 8.0),
                                                          child: Text(
                                                            AppLocalizations.of(context)!.risktestheart,
                                                            textAlign: TextAlign.center,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack, fontSize: 19, height: 1.2, fontWeight: FontWeight.w700,
                                                            )
                                                          ),
                                                        )
                                                      ]
                                                    )
                                                )
                                            ),
                                          )
                                        ]
                                      ),
                                    )
                                  ]
                                )
                            )
                          ]
                        )
                    )
                )
              ],
              ),
            )
          ]
        )
    );
  }
}