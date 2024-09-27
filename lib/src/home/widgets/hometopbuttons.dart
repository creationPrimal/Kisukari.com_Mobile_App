

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class HomeTopButtons extends StatelessWidget {
  const HomeTopButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 20),
      child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // online consultation
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, consultation);
              },
              child: Stack(
                children: [
                  Container(
                    height: 110, width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Kcolors.lightBlue, borderRadius: BorderRadius.circular(10),
                      border: Border.all( width: 1,  color: Kcolors.mainBlack),
                      boxShadow:  [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), offset: const Offset(1, 3), blurRadius: 7, spreadRadius: 1)
                      ]
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50, width: 50,
                              child:  Image.asset(Kicons.consulticon, fit: BoxFit.cover),),
                            Text(
                              AppLocalizations.of(context)!.homeconsultbtn,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto( color: Kcolors.mainBlack, fontSize: 18, height: 1.2, fontWeight: FontWeight.w600,)
                            )
                          ]
                        ),
                      )
                  ),
                  Positioned(
                    top: 4, left: 4,
                    child:
                      Icon(Icons.calendar_month, color: Kcolors.mainBlack, size: 30)
                  )
                ],
              ),
            ),
            // doctors recommendation
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, doctorsrecom);
              },
              child: Container(
                height: 110, width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Kcolors.lightBlue, borderRadius: BorderRadius.circular(10),
                  border: Border.all( width: 1,  color: Kcolors.mainBlack),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), offset: const Offset(1, 3), blurRadius: 7, spreadRadius: 1)
                  ]
                ),
                child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50, width: 50,
                          child:  Image.asset(Kicons.recomicon, fit: BoxFit.cover),),
                        Text(
                          AppLocalizations.of(context)!.homerecombtn,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto( color: Kcolors.mainBlack, fontSize: 18, height: 1.2, fontWeight: FontWeight.w600,)
                        )
                      ]
                    ),
                  )
              ),
            ),
            // risk assessment
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, riskassessment);
              },
              child: Container(
                height: 110, width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Kcolors.lightBlue, borderRadius: BorderRadius.circular(10),
                  border: Border.all( width: 1,  color: Kcolors.mainBlack),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), offset: const Offset(1, 3), blurRadius: 7, spreadRadius: 1)
                  ]
                ),
                child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50, width: 50,
                          child:  Image.asset(Kicons.risktesticon, fit: BoxFit.cover),),
                        Text(
                          AppLocalizations.of(context)!.homeriskbtn,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto( color: Kcolors.mainBlack, fontSize: 18, height: 1.2, fontWeight: FontWeight.w600,)
                        )
                      ]
                    ),
                  )
              ),
            ),
          ]
        )
    );
  }
}