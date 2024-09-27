

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DoctorsRecommendationsCongrats extends StatelessWidget {
  const DoctorsRecommendationsCongrats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton()
      ),
      body:
        LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // top contents
                        SizedBox(
                          child:
                            Column(
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.recomCongrats,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainRed,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                SizedBox(
                                  height: 70, width: 70,
                                  child: Image.asset(Kicons.clappingicon, fit: BoxFit.cover,)
                                ),
                                Text(
                                  AppLocalizations.of(context)!.recomCongratsbody,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 20,
                                    height: 1.3,
                                    fontWeight: FontWeight.w500
                                  )
                                )
                              ]
                            )
                        ),
                        // middle icon
                        SizedBox(
                          height: 200, width: 200,
                          child: Image.asset(Kicons.dayhoursicon, fit: BoxFit.cover,)
                        ),
                        // below
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child:
                            Column(
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.recomCongratsbelowline,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 20,
                                    height: 1.3,
                                    fontWeight: FontWeight.w600
                                  )
                                ),
                                // finish
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                                  child: 
                                  GestureDetector(
                                  onTap: () {
                                    Navigator.popUntil(context, (route) => route.isFirst);
                                  },
                                  child: Container(
                                    height: 50,
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainRed,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Center(
                                      child: Text(AppLocalizations.of(context)!.selftestResultfinish,
                                      textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainWhite
                                        )
                                      ),
                                    )
                                  ),
                                  ),
                                  
                                )
                              ]
                            )
                        )
                      ]
                    )
                ),
              ),
            );
          }
        )
    );
  }
}