

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeClinicCounter extends StatelessWidget {
  const HomeClinicCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            // title
            SizedBox(
              child: 
              Text(
                AppLocalizations.of(context)!.homeMyclinic,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainBlack,
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                )
              ),
            ),

            //body
            Container(
              margin: const EdgeInsets.only(top:15),
              decoration: BoxDecoration(
              color: Kcolors.mainWhite,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2, 
                  blurRadius: 10,   
                  offset: const Offset(0, 2),
                )
              ]
            ),
            child: 
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    //top section
                    Container(
                      decoration: BoxDecoration(
                        color: Kcolors.lightGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.only(left:4.0, right: 3, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          
                              // counter progress bar        
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: 
                                SizedBox(
                                  height: 120,
                                  width: MediaQuery.of(context).size.width * 0.29,
                                  child: 
                                    Center(
                                      child: CircularPercentIndicator(
                                        radius: 58.0,
                                        animation: true,
                                        animationDuration: 500,
                                        lineWidth: 15.0,
                                        percent: 0.7,
                                        center: 
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.homeCliniccounterdays,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 14,
                                                  height: 1,
                                                  fontWeight: FontWeight.w600,
                                                )
                                              ),
                                              Text(
                                               '14',
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                              Text(
                                               AppLocalizations.of(context)!.homeCliniccounterremaining,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 14,
                                                  height: 1,
                                                  fontWeight: FontWeight.w600,
                                                )
                                              )
                                              
                                            ]
                                          ),
                                        circularStrokeCap: CircularStrokeCap.round,
                                        backgroundColor: Kcolors.darkBlue.withOpacity(0.3),
                                        progressColor: Kcolors.mainRed,
                                      ),
                                    ),
                                ),
                              ),
                          
                              // names location date and more
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.55,
                                child:
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // hospital name
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.location_on_outlined,
                                            size: 17,
                                            color: Kcolors.lightGreen
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.48,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 2.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '${AppLocalizations.of(context)!.homeHospitalname}: ',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.mainBlack,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                        )
                                                      ),
                                                      TextSpan(
                                                        text: 'Muhimbili',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.darkBlue,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                      )
                                                    ]
                                                  )
                                                ),
                                              ),
                                            )
                                          ]
                                        ),
                                      ),

                                      // last attendance date
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.calendar_month,
                                            size: 17,
                                            color: Kcolors.lightGreen
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.48,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 2.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '${AppLocalizations.of(context)!.homeHospitallastvisit}: ',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.mainBlack,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                        )
                                                      ),
                                                      TextSpan(
                                                        text: '20 March, 2024',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.darkBlue,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                      )
                                                    ]
                                                  )
                                                ),
                                              ),
                                            )
                                          ]
                                        ),
                                      ),

                                      // upcoming date
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Icon(Icons.calendar_month,
                                            size: 17,
                                            color: Kcolors.lightGreen
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width * 0.48,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 2.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '${AppLocalizations.of(context)!.homeHospitalupcomingdate}: ',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.mainBlack,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500,
                                                        )
                                                      ),
                                                      TextSpan(
                                                        text: '20 April, 2024',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.darkBlue,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                      )
                                                    ]
                                                  )
                                                ),
                                              ),
                                            )
                                          ]
                                        ),
                                      ),

                                      // add info button
                                      Container(
                                        width: 140,
                                         decoration: BoxDecoration(
                                          color: Kcolors.darkBlue,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child:
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3, left: 6, bottom: 3, right: 6),
                                            child: Row(
                                              children: [
                                                Icon(Icons.edit_note,
                                                  size: 17,
                                                  color: Kcolors.mainWhite
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 3.0),
                                                  child: Text(AppLocalizations.of(context)!.homeHospitaladdinfo,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainWhite,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  )
                                                  ),
                                                )
                                              ]
                                            ),
                                          )
                                      )
                                    ]
                                  )
                              )
                                          
                            ]
                          ),
                        )
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, mrkisukari);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25),
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0, left:4),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child:
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(50),
                                            child: Image.asset(Kicons.customerserviceIcon,
                                            fit: BoxFit.cover
                                            ),
                                          )
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4.0),
                                        child: SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.48,
                                          child: Text(
                                            AppLocalizations.of(context)!.homeHospitalcustomerservicetitle,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 19,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ),
                                      )
                                    ]
                                  ),
                                )
                            ),
                      
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Kcolors.mainRed,
                                borderRadius: BorderRadius.circular(60)
                              ),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.only(right: 9.0, left: 9),
                                  child: Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.hometalktous,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )

          ],
        )
    );
  }
}