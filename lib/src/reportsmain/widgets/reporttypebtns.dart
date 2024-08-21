

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/bloodpressure_report/bpmainreport.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/excercise_report/excercisemainreport.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/glucosemainreport.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/insulin_report/insulinmainreport.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/medicine_report/medicinemainreport.dart';

class ReportTypeBtns extends StatefulWidget {
  const ReportTypeBtns({super.key});

  @override
  State<ReportTypeBtns> createState() => _ReportTypeBtnsState();
}

class _ReportTypeBtnsState extends State<ReportTypeBtns> {

  late List<BtnList> btnlistitems;

  @override
  void didChangeDependencies() {
    btnListFunc ();
    super.didChangeDependencies();
  }

  void btnListFunc () {
    btnlistitems = [
      BtnList(title: AppLocalizations.of(context)!.reportGlucose, iconPath: Kicons.glucometerIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportBp, iconPath: Kicons.heartbeatIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportInsulin, iconPath: Kicons.syringeIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportMedicine, iconPath: Kicons.doublepillsIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportExcercise, iconPath: Kicons.coloredrunningIconIntro, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportFood, iconPath: Kicons.foodutensilsIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportFasting, iconPath: Kicons.fastingIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportWeight, iconPath: Kicons.reportweightIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportClinic, iconPath: Kicons.hospitalIcon, isActive: false),
    ];
  }

  void btnColorChange(int index) {
    setState(() {
      for (int i = 0; i < btnlistitems.length; i++ ) {
        btnlistitems[i].isActive = false;
      }
      btnlistitems[index].isActive = true;
    });
  }





  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //title
          SizedBox(
            child:
              Text(
                AppLocalizations.of(context)!.reportReporttype,
                textAlign: TextAlign.start,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainBlack,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                )
              )
          ),

          // report buttons
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Kcolors.lightGrey.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15),
            ),
            child: 
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 14.0, bottom: 14),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.start,
                    spacing: 25.0,
                    runSpacing: 20.0,
                    children: List.generate(
                      btnlistitems.length, (index) {
                        final btn = btnlistitems[index];
                        return GestureDetector(
                          onTap: () {
                            btnColorChange(index);
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: btn.isActive ? Kcolors.lightBlue : Kcolors.mainWhite,
                                  borderRadius: BorderRadius.circular(50),
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
                                  Center(
                                    child: SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: ClipRRect(
                                        child: Image.asset(
                                          btn.iconPath,
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  btn.title,
                                  style: GoogleFonts.roboto(
                                    color: btn.isActive ? Kcolors.darkBlue : Kcolors.mainBlack,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              )
                            ],
                          ),
                        );
                      }
                    )
                  ),
                ),
              )
          ),


          //ALL REPORTS HERE BELOW
          //display glucose report
          if (btnlistitems[0].isActive)
            const GlucoseMainreport(),
            
          //display blood pressure report
          if (btnlistitems[1].isActive)
            const BpMainReport(),

          //display insulin report
          if (btnlistitems[2].isActive)
            const InsulinMainReport(),

          //display medicine report
          if (btnlistitems[3].isActive)
            const MedicineMainReport(),

          //display excercise report
          if (btnlistitems[4].isActive)
            const ExcerciseMainReport(),
            

        ],
      )
    );
  }
}



//btn model

class BtnList {
  BtnList({
    required this.title,
    required this.isActive,
    required this.iconPath,
  });

  String title;
  bool isActive;
  String iconPath;

}