

import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class LogEntries extends StatefulWidget {
  
  final VoidCallback hideOverlay;

  const LogEntries({super.key, required this.hideOverlay});

  @override
  State<LogEntries> createState() => _LogEntriesState();
}

class _LogEntriesState extends State<LogEntries> {

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
      BtnList(title: AppLocalizations.of(context)!.reportNotes, iconPath: Kicons.notesColorIcon, isActive: false),
      BtnList(title: AppLocalizations.of(context)!.reportReminder, iconPath: Kicons.reminderColorIcon, isActive: false),
    ];
  }



  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Kcolors.mainWhite.withOpacity(0.4),
        ),
        child: 
          FadeInUp(
            animate: true,
            curve: Curves.easeInOut,
            delay: const Duration(milliseconds: 50),
            duration: const Duration(milliseconds: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 40),
                          child:
                          Wrap (
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.center,
                            spacing: 25.0,
                            runSpacing: 20.0,
                            children: List.generate(
                              btnlistitems.length, (index) {
                                final btn = btnlistitems[index];
                                return  GestureDetector(
                                  onTap: () {
                                    
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
                                          overflow: TextOverflow.ellipsis,
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
                          )
                        ),
            
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          child: IconButton(
                            onPressed: widget.hideOverlay,
                            icon: 
                              Icon(Icons.cancel_rounded,
                              size: 60,
                              color: Kcolors.mainRed,
                              )
                          ),
                        )
                        
                      ]
                    ),
                )
              ]
            ),
          )
      ),
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