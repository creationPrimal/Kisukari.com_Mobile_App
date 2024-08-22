


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ClinicContactUs extends StatelessWidget {
  const ClinicContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Kcolors.lightGrey,
        borderRadius: BorderRadius.circular(15)
      ),
      child:  
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(right: 29),
                    child: 
                      Image.asset(
                        Kicons.hospitalIcon,
                        fit: BoxFit.cover
                      ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child:
                      Text(
                        AppLocalizations.of(context)!.reportclinicbelowbtncontactus,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          height: 1.2,
                          color: Kcolors.mainBlack,
                          fontWeight: FontWeight.bold,
                        )
                      )
                  )
                ],
              ),

              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Kcolors.mainRed,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:
                  TextButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(0))
                    ),
                    child:
                      Text(
                        AppLocalizations.of(context)!.homepressHere,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          height: 1.2,
                          color: Kcolors.mainWhite,
                          fontWeight: FontWeight.bold,
                        )
                      )
                  )
              )
            ],
          ),
        ),
    );
  }
}