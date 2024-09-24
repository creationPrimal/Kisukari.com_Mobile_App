


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class TalkToUsBtn extends StatelessWidget {
  const TalkToUsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.65,
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      padding: const EdgeInsets.only(left: 10.0),
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
    );
  }
}