


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SubscriptionStatus extends StatelessWidget {
  const SubscriptionStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top:5, right: 15, bottom: 15),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child:
        Column(
          children: [

            Container(
              height: 6,
              width: 100,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: Kcolors.lightGrey,
                borderRadius: BorderRadius.circular(20)
              )
            ),

            //status
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      AppLocalizations.of(context)!.appSettingssubscriptionactive,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                    ),

                    Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Kcolors.lightBlue,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: 
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.morescreenPremiumtitle,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${AppLocalizations.of(context)!.appSettingssubscriptionending}: ',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 18,
                                            )
                                          ),
                                          Text(
                                            ' 26-03-2025',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            )
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '${AppLocalizations.of(context)!.appSettingssubscriptionduration}: ',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 18,
                                            )
                                          ),
                                          Text(
                                            ' ${AppLocalizations.of(context)!.premiummonths}-2',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            )
                                          ),
                                        ],
                                      ),
                                      
                                    ]
                                  )
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainRed,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4.0, left: 20, right: 20, bottom: 4),
                                      child: Center(
                                        child: 
                                         Text(
                                          AppLocalizations.of(context)!.appSettingssubscriptionend,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainWhite,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                          )
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                              )
                            ]
                          ),
                        )
                    )

                  ]
                )
            )

          ]
        )
    );
  }
}