


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/talktousbutton.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/widgets/glucosegraph.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/widgets/glucosetable.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/widgets/topchart.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GlucoseMainreport extends StatefulWidget {
  const GlucoseMainreport({super.key});

  @override
  State<GlucoseMainreport> createState() => _GlucoseMainreportState();
}

class _GlucoseMainreportState extends State<GlucoseMainreport> {

  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top:20, bottom: 20),
      child: 
       
       Column(
        children: <Widget> [

          //top pie chart widget
          const GlucoseTopPieChart(),

          //table
          const GlucoseTable(),

          //line graph
          const GlucoseGraph(),

          //report  customer service btn
          const TalkToUsBtn(),

          //below tab (download pdf)
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 25),
            child:
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      color: Kcolors.lightBlue,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(AppLocalizations.of(context)!.reportDownloadpdf,
                            textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Kcolors.mainBlack
                              )
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.only(left: 8),
                              child: Image.asset(
                                Kicons.premiumIcon,
                                fit: BoxFit.cover
                              ),
                            )
                          ]
                        ),
                    )
                  ),
                ),
        
                
                ]
              )
            )



        ]
       )

    );
  }
}