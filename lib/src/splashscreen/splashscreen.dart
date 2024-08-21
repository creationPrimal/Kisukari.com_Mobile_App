

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/utils/settings/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  final data = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              Kimages.splashImage,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover
            ),
            Positioned(
              top: 60,
              right: 15,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.5,
                        color: Kcolors.mainRed,
                      ),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: 
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, languageScreen);
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 6, right: 6),
                            child:
                             Image.asset( data.read('language') == 'Swahili' ? Kicons.flagTanzania : Kicons.flagAmerica,
                            height: 20,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            child: Text(data.read('language') ?? Settings.language,
                            overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Kcolors.mainBlack,
                              )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              bottom: 60,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Kimages.logo,
                    width: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.contain
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, introPage);
                     /*  Navigator.pushNamedAndRemoveUntil(context, introPage, (Route<dynamic> route) => false); */
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.85,
                      margin: const EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                        color: Kcolors.mainRed,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.start,
                        textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Kcolors.mainWhite
                          )
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child:
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      mainentrypoint,
                      (Route<dynamic> route) => false
                    );
                  },
                  child: 
                    const Text('Skip')
                )
            )
          ],
        )
      )
    );
  }
}