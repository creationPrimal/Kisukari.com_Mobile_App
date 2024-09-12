

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PlansEdit extends StatefulWidget {
  const PlansEdit({super.key});

  @override
  State<PlansEdit> createState() => _PlansEditState();
}

class _PlansEditState extends State<PlansEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        title: 
          Text(
            AppLocalizations.of(context)!.goalsedit,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          ),
      ),
      body:   
        FadeIn(
          animate: true,
          duration: const Duration(milliseconds: 400),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: 
                      Container(
                        margin: const EdgeInsets.all(15),
                        child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
          
          
                              //inputs
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
          
          
                                  //glucose level
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child:
                                      Text(
                                       '${AppLocalizations.of(context)!.resultsSugarlevels} (mmol/l)',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Kcolors.lightGrey,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
          
                                            // before meal
                                            Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                                  child:
                                                    Text(
                                                      AppLocalizations.of(context)!.resultsBeforemeal,
                                                      style: GoogleFonts.roboto(
                                                        color: Kcolors.darkBlue,
                                                        fontSize: 17,
                                                        fontWeight: FontWeight.w700
                                                      )
                                                    ),
                                                ),
          
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                    // separator
                                                    Container(height: 3,width: 20,decoration: BoxDecoration(color: Kcolors.mainBlack,),),
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                  ]
                                                )
          
                                              ]
                                            ),
          
          
                                            const SizedBox(height:10),
                                            // after meal
                                            Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                                  child:
                                                    Text(
                                                      AppLocalizations.of(context)!.resultsAftermeal,
                                                      style: GoogleFonts.roboto(
                                                        color: Kcolors.darkBlue,
                                                        fontSize: 17,
                                                        fontWeight: FontWeight.w700
                                                      )
                                                    ),
                                                ),
          
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                    // separator
                                                    Container(height: 3,width: 20,decoration: BoxDecoration(color: Kcolors.mainBlack,),),
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                  ]
                                                )
          
                                              ]
                                            )
          
                                            
                                          ]
                                        ),
                                      )
                                  ),
          
                                  // bp
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
                                      color: Kcolors.lightGrey,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
          
                                            // 
                                            Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                    // separator
                                                    Container(height: 3,width: 20,decoration: BoxDecoration(color: Kcolors.mainBlack,),),
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                  ]
                                                )
          
                                              ]
                                            ),
          
                                            
                                          ]
                                        ),
                                      )
                                  ),
          
          
                                  // calories
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
                                      color: Kcolors.lightGrey,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
          
                                            // 
                                            Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
          
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width * 0.35,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                                        child:
                                                          Text(
                                                            AppLocalizations.of(context)!.goalscalorieintake,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.darkBlue,
                                                              fontSize: 17,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                      ),
                                                    ),
                                                     SizedBox(
                                                      width: MediaQuery.of(context).size.width * 0.35,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                                        child:
                                                          Text(
                                                            AppLocalizations.of(context)!.goalscalorieburnt,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.darkBlue,
                                                              fontSize: 17,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
          
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                  ]
                                                )
          
                                              ]
                                            ),
          
                                            
                                          ]
                                        ),
                                      )
                                  ),
          
          
                                  // excercises
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child:
                                      Text(
                                       '${AppLocalizations.of(context)!.resultsExcerciselevels} (${AppLocalizations.of(context)!.resultsExcerciseCalorie2})',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Kcolors.lightGrey,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
          
                                            // 
                                            Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
          
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width * 0.35,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                                        child:
                                                          Text(
                                                            AppLocalizations.of(context)!.resultssteps,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.darkBlue,
                                                              fontSize: 17,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                      ),
                                                    ),
                                                     SizedBox(
                                                      width: MediaQuery.of(context).size.width * 0.35,
                                                      child: Padding(
                                                        padding: const EdgeInsets.symmetric(vertical: 5),
                                                        child:
                                                          Text(
                                                            AppLocalizations.of(context)!.resultExcercise,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.darkBlue,
                                                              fontSize: 17,
                                                              fontWeight: FontWeight.w700
                                                            )
                                                          ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
          
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                    Container(
                                                      height: 50,width: MediaQuery.of(context).size.width * 0.35,
                                                      decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                                      child:
                                                      TextFormField(
                                                        autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                        style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                        decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                      )
                                                    ),
                                                  ]
                                                )
          
                                              ]
                                            ),
          
                                            
                                          ]
                                        ),
                                      )
                                  ),
          
                                  // bmi
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    child:
                                      Text(
                                       'BMI (Kg/m\u00B2)',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Kcolors.lightGrey,
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 50,
                                          decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(8) ),
                                          child:
                                          TextFormField(
                                            autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                            style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                            decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                          )
                                        ),
                                      )
                                  ),
          
          
          
                                ]
                              ),
          
          
          
          
                              //below save
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(top: 40, bottom: 30),
                                  child: GestureDetector(
                                  onTap: () {
                                    
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width * 0.85,
                                    margin: const EdgeInsets.only(top: 5),
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainRed,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Center(
                                      child: Text(AppLocalizations.of(context)!.save,
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
                                ),
                        
          
                            ]
                          )
                      ),
                  )
              );
            }
          ),
        ),
    );
  }
}