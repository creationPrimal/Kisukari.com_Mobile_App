


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Insulintopreadings extends StatefulWidget {
  const Insulintopreadings({super.key});

  @override
  State<Insulintopreadings> createState() => _InsulintopreadingsState();
}

class _InsulintopreadingsState extends State<Insulintopreadings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
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
                width: MediaQuery.of(context).size.width * 0.40,
                child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.reportInsulintopreadingavinsulin,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                '64',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainRed,
                                  fontSize: 70,
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                              Text(
                                AppLocalizations.of(context)!.reportInsulintopreadingunits,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ]
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Icon(Icons.arrow_upward,
                            color: Kcolors.mainRed,
                            size: 27,
                            ),
                          )
                        ]
                      ),
                      Text(
                        '(${AppLocalizations.of(context)!.hometarget}: < 52 ${AppLocalizations.of(context)!.reportInsulintopreadingunits})',
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainBlack,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ],
                  )
                
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.40,
                child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '40%',
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          SizedBox(
                            height: 90,
                            child: 
                              Image.asset(
                                Kicons.reportwaterinsulinIcon,
                                fit: BoxFit.cover,
                              )
                          ),
                          Text(
                            AppLocalizations.of(context)!.reportInsulintopreadingwaterinsulin,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )
                          ),
                        ]
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '60%',
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                          SizedBox(
                            height: 90,
                            child: 
                              Image.asset(
                                Kicons.reportmilkinsulinIcon,
                                fit: BoxFit.cover,
                              )
                          ),
                          Text(
                            AppLocalizations.of(context)!.reportInsulintopreadingmilkinsulin,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            )
                          ),
                        ]
                      )
                    ]
                  )

              )
          
            ]
          ),
        )
    );
  }
}