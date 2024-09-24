

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WoundsFirstPage extends StatefulWidget {
  final VoidCallback callback;
  const WoundsFirstPage({super.key, required this.callback});

  @override
  State<WoundsFirstPage> createState() => _WoundsFirstPageState();
}

class _WoundsFirstPageState extends State<WoundsFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.woundtestTitlecontent,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 28,
                    height: 1.3,
                    fontWeight: FontWeight.bold
                  )
                ),
                const SizedBox(height:50), // space
                // body
                Text(
                  AppLocalizations.of(context)!.woundtestfirstlinebody,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.w600
                  )
                ),
                const SizedBox(height:15), // space
                Text(
                  AppLocalizations.of(context)!.woundtestsecondlinebody,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.w600
                  )
                ),
                const SizedBox(height:15), // space
                Text(
                  AppLocalizations.of(context)!.woundtestthirdlinebody,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.w600
                  )
                ),
                const SizedBox(height:15), // space
                Text(
                  AppLocalizations.of(context)!.woundtestfourthlinebody,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 20,
                    height: 1.2,
                    fontWeight: FontWeight.w600
                  )
                ),
              ]
            ),


            // below contents
            SizedBox(
              child:
                Column(
                  children: [
                    // buton
                    GestureDetector(
                      onTap: widget.callback,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Kcolors.mainRed,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                            child: Text(
                            AppLocalizations.of(context)!.selftestWelcomeStartTest,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )
                            ),
                          ),
                      ),
                    ),
                    // source
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0, bottom: 30),
                      child: Text(
                        '${AppLocalizations.of(context)!.selftestWelcomeReference}: National Institute for Health and Care Excellence (NICE)',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainWhite,
                          fontSize: 18,
                          height: 1.3,
                        )
                      ),
                    ),
                  ]
                )
            )
          ],
        )
    );
  }
}