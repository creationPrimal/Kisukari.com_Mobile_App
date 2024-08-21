

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GlucosePieChart extends StatefulWidget {
  const GlucosePieChart({super.key});

  @override
  State<StatefulWidget> createState() => GlucosePieChartState();
}

class GlucosePieChartState extends State {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            child:
            //Indicators
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //indicator 1
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right:4),
                          decoration: BoxDecoration(
                            color: Kcolors.mainGold,
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        Text(
                          AppLocalizations.of(context)!.reportPiechartLow,
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )
                        )
                      ]
                    ),
                  ),
                   //indicator 2
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right:4),
                          decoration: BoxDecoration(
                            color: Kcolors.mainGreen,
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        Text(
                          AppLocalizations.of(context)!.reportPiechartaverage,
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )
                        )
                      ]
                    ),
                  ),
                   //indicator 2
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.only(right:4),
                          decoration: BoxDecoration(
                            color: Kcolors.mainRed,
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        Text(
                          AppLocalizations.of(context)!.reportPiechartHigh,
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )
                        )
                      ]
                    ),
                  )
                ]
              )
          ),
         
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: SizedBox(
              width: 150,
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(
                  PieChartData(
                    
                    startDegreeOffset: 90,
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 1,
                    centerSpaceRadius: 0,
                    sections: showingSections(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      3,
      (i) {
        Color color0 = Kcolors.mainGold;
        Color color1 = Kcolors.mainGreen;
        Color color2 = Kcolors.mainRed;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 40,
              title: '40%',
              titleStyle: GoogleFonts.roboto(
                color: Kcolors.mainBlack,
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
              radius: 65,
              titlePositionPercentageOffset: 0.55,
              borderSide: BorderSide(
                      color: Kcolors.mainWhite.withOpacity(0)),
            );
          case 1:
            return PieChartSectionData(
              color: color1,
              value: 25,
              title: '25%',
              titleStyle: GoogleFonts.roboto(
                color: Kcolors.mainBlack,
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
              radius: 65,
              titlePositionPercentageOffset: 0.55,
              borderSide: BorderSide(
                      color: Kcolors.mainWhite.withOpacity(0)),
            );
          case 2:
            return PieChartSectionData(
              color: color2,
              value: 35,
              title: '35%',
              titleStyle: GoogleFonts.roboto(
                color: Kcolors.mainWhite,
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
              radius: 65,
              titlePositionPercentageOffset: 0.6,
              borderSide: BorderSide(
                      color: Kcolors.mainWhite.withOpacity(0)),
            );
          default:
            throw Error();
        }
      },
    );
  }
}

