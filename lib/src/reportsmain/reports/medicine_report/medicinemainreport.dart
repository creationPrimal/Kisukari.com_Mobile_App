


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/talktousbutton.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/medicine_report/widgets/medicinetable.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/medicine_report/widgets/medicinetopreadings.dart';

class MedicineMainReport extends StatefulWidget {
  const MedicineMainReport({super.key});

  @override
  State<MedicineMainReport> createState() => _MedicineMainReportState();
}

class _MedicineMainReportState extends State<MedicineMainReport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top:20, bottom: 20),
      child: 
        Column(
          children: [

            // top readings
            const MedicineTopReadings(),

            // table
            const MedicineTable(),



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