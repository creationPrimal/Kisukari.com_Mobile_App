

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class PlansMain extends StatelessWidget {
  const PlansMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        title: 
          Text(
            AppLocalizations.of(context)!.goalsHead,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, plansedit);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.edit_note,
                color: Kcolors.darkBlue,
                size: 35,
              ),
            ),
          )
        ]
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.all(15),
            child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
          
                  //glucose level
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child:
                      Text(
                        AppLocalizations.of(context)!.resultsSugarlevels,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        )
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                        
                            // before meal
                            SizedBox(
                            child:
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                
                                    Text(
                                      AppLocalizations.of(context)!.resultsBeforemeal,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                  
                                    SizedBox(
                                      child: Text(
                                        '4.0 - 6.9 mmol/l',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ]
                                ),
                              )
                            ),
                        
                            //line bar
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Kcolors.lightGrey.withOpacity(0.5)
                                )
                              ),
                            ),
                        
                            // after meal
                            SizedBox(
                            child:
                              Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              
                                    Text(
                                      AppLocalizations.of(context)!.resultsAftermeal,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                                    
                                    SizedBox(
                                      child: Text(
                                        '4.0 - 6.9 mmol/l',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                  
                  
                                  ]
                                ),
                              )
                            ),
                        
                        
                        
                          ]
                        ),
                      )
                  ),
          
                  //bp
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child:
                      Text(
                        AppLocalizations.of(context)!.resultsbplevels,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        )
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                        
                            
                            SizedBox(
                            child:
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                
                                    Text(
                                      AppLocalizations.of(context)!.goalsLevel,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                  
                                    SizedBox(
                                      child: Text(
                                        '130/80 - 139/89 mmHg',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ]
                                ),
                              )
                            ),
                        
                        
                          ]
                        ),
                      )
                  ),
                  
                  //calorie level
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child:
                      Text(
                        AppLocalizations.of(context)!.resultsCalorieslevels,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        )
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                        
                            // intake
                            SizedBox(
                            child:
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                
                                    Text(
                                      AppLocalizations.of(context)!.goalscalorieintake,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                  
                                    SizedBox(
                                      child: Text(
                                        ' < 5000 ${AppLocalizations.of(context)!.reportmedicineperday}',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ]
                                ),
                              )
                            ),
                        
                            //line bar
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Kcolors.lightGrey.withOpacity(0.5)
                                )
                              ),
                            ),
                        
                            
                            SizedBox(
                            child:
                              Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              
                                    Text(
                                      AppLocalizations.of(context)!.goalscalorieburnt,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                                    
                                    SizedBox(
                                      child: Text(
                                        '5000 ${AppLocalizations.of(context)!.reportmedicineperday}',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                  
                  
                                  ]
                                ),
                              )
                            ),
                        
                        
                        
                          ]
                        ),
                      )
                  ),
          
                  //excercise level
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child:
                      Text(
                        AppLocalizations.of(context)!.resultsExcerciselevels,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        )
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                        
                            // intake
                            SizedBox(
                            child:
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                
                                    Text(
                                      AppLocalizations.of(context)!.resultssteps,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                  
                                    SizedBox(
                                      child: Text(
                                        '6000 ${AppLocalizations.of(context)!.reportmedicineperday}',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ]
                                ),
                              )
                            ),
                        
                            //line bar
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                  color: Kcolors.lightGrey.withOpacity(0.5)
                                )
                              ),
                            ),
                        
                            
                            SizedBox(
                            child:
                              Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              
                                    Text(
                                      AppLocalizations.of(context)!.resultExcercise,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                                    
                                    SizedBox(
                                      child: Text(
                                        '30 ${AppLocalizations.of(context)!.reportfastingminutes} ${AppLocalizations.of(context)!.reportmedicineperday}',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                  
                  
                                  ]
                                ),
                              )
                            ),
                        
                        
                        
                          ]
                        ),
                      )
                  ),
          
                  //bmi
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child:
                      Text(
                        AppLocalizations.of(context)!.resultWeightLevels,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 19,
                          fontWeight: FontWeight.bold
                        )
                      ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Kcolors.mainWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                        
                            
                            SizedBox(
                            child:
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                
                                    Text(
                                      'BMI',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                  
                                    SizedBox(
                                      child: Text(
                                        '31.7 kg/m\u00B2',
                                        textAlign: TextAlign.end,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ),
                                  ]
                                ),
                              )
                            ),
                        
                        
                          ]
                        ),
                      )
                  ),
          
          
          
                ]
              )
          ),
        )
    );
  }
}