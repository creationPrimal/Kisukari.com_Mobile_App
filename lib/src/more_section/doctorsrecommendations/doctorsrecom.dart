

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class DoctorsRecommendations extends StatefulWidget {
  const DoctorsRecommendations({super.key});

  @override
  State<DoctorsRecommendations> createState() => _DoctorsRecommendationsState();
}

class _DoctorsRecommendationsState extends State<DoctorsRecommendations> {

  // date picker
  DateTime? _selectedDate1;
  DateTime? _selectedDate2;

  // Date picker 1
  Future<void> _selectFirstDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: (_selectedDate1 ?? DateTime.now()).isAfter(_selectedDate2 ?? DateTime.now()) 
                  ? _selectedDate2 ?? DateTime.now() 
                  : _selectedDate1 ?? DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: _selectedDate2 ?? DateTime.now(),
    );
    if (picked != null && picked != _selectedDate1) {
      setState(() {
        _selectedDate1 = picked;
      });
    }
  }
  // Date picker 2
  Future<void> _selectSecondDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate2 ?? DateTime.now(),
      firstDate: _selectedDate1 ?? DateTime(2023),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate2) {
      setState(() {
        _selectedDate2 = picked;
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title:
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, recomreports);
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 150,
                child:
                  Container(
                    decoration: BoxDecoration(
                      color: Kcolors.darkBlue,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.recomMyreports,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainWhite,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            Icon(Icons.arrow_forward, color: Kcolors.mainWhite, size: 22)
                          ]
                        ),
                      )
                  )
              
              ),
            ),
          )
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
            Container(
              margin: const EdgeInsets.all(15),
              child:
                Column(
                  children: [
                    // top Icon
                    SizedBox(
                      height: 100, width: 100,
                      child: Image.asset(Kicons.recomicon, fit: BoxFit.cover,)
                    ),
                    // title and body
                    SizedBox(
                      child:
                        Column(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.recommainTitle,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainRed,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            Text(
                              AppLocalizations.of(context)!.recommainbody,
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
                    // prices and duration
                    Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //duration
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Icon(Icons.calendar_month, color: Kcolors.mainRed, size: 60),
                                ),
                                Text(
                                  "${AppLocalizations.of(context)!.recomWeeks}: 2",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ]
                            ),
                            //price
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Icon(Icons.credit_card_outlined, color: Kcolors.mainRed, size: 60),
                                  ),
                                  Text(
                                    "5,000 Tsh",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                ]
                              ),
                            )
                          ]
                        )
                    ),
                    // below dtae picker
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.recomDatepickertitle,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 20,
                                height: 1.3,
                                fontWeight: FontWeight.w500
                              )
                            ),
                            //datepicker
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          AppLocalizations.of(context)!.reportcreatereportfirstday ,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                      ),
                                      GestureDetector(
                                      onTap: () {
                                        _selectFirstDate(context);
                                      },
                                        child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                            _selectedDate1 == null
                                          ? AppLocalizations.of(context)!.reportselectdays
                                          : ' ${DateFormat('dd-MM-yyyy').format(_selectedDate1!)}',
                                          style: TextStyle(
                                            fontSize: 20, 
                                            color: Kcolors.darkBlue,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                                                          ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          AppLocalizations.of(context)!.reportcreatereportlastday ,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                      ),
                                      GestureDetector(
                                      onTap: () {
                                        _selectSecondDate(context);
                                      },
                                        child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                            _selectedDate2 == null
                                          ? AppLocalizations.of(context)!.reportselectdays
                                          : ' ${DateFormat('dd-MM-yyyy').format(_selectedDate2!)}',
                                          style: TextStyle(
                                            fontSize: 20, 
                                            color: Kcolors.darkBlue,
                                            fontWeight: FontWeight.bold
                                            ),
                                        ),
                                                                          ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),


                            // finish
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20.0),
                              child: 
                              GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, doctorsrecomcongrats);
                              },
                              child: Container(
                                height: 50,
                                margin: const EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                  color: Kcolors.mainRed,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text(AppLocalizations.of(context)!.recomCreate,
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
            )
        )
    );
  }
}