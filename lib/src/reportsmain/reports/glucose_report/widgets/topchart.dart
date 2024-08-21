


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/widgets/piechartwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GlucoseTopPieChart extends StatelessWidget {
  const GlucoseTopPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.water_drop_outlined,
                              color: Kcolors.mainRed,
                              size: 19
                              ),
                              Text(
                                AppLocalizations.of(context)!.averageA1C,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                                )
                              )
                          ]
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            children: [
                               
                                Text(
                                  '8.5%',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainRed,
                                    fontSize: 52,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.arrow_upward,
                                    color: Kcolors.mainRed,
                                    size: 30
                                  ),
                                ),
                            ]
                          ),
                        ),
                
                      ]
                    ),
                
                    Text(
                      '(${AppLocalizations.of(context)!.hometarget} < 6.5%)',
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainBlack,
                        fontSize: 24,
                        height: 1,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ]
                ),
              ),

              // glucose pie chart
              const SizedBox(
                height: 180,
                width: 185,
                child:
                  GlucosePieChart()
              )
            ]
          ),
        )
    );
  }
}