


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/calculatingloader.dart';
import 'package:kisukari_mobile_app/src/introduction/resultsscreen/widgets/sugarlevelresult.dart';

class IntroResults extends StatefulWidget {
  const IntroResults({super.key});

  @override
  State<IntroResults> createState() => _IntroResultsState();
}

class _IntroResultsState extends State<IntroResults> {

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Start the 5-second delay
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false; // Updates the state to stop loading when becomes false but when true it loads
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        leading: const CustomBackButton(),
        title: 
          SizedBox(
            height: 22,
            width: MediaQuery.of(context).size.width * 0.65,
            child:
            Image.asset(
              Kimages.logoTitle,
              fit: BoxFit.contain,
            )
          )
      ),
      body:

      _isLoading ? // this initializes loading before showing the results

      const Calculatingloader()

      :

      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
        Container(
          margin: const EdgeInsets.all(15.0),
          child: 
          Column(
            children: [

              //head title
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.resultsCongrats,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Text(
                      AppLocalizations.of(context)!.resultsCongratsSub,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        height: 1.2,
                        color: Kcolors.mainBlack,
                      )
                    ),
                  ],
                ),
              ),

              // sugar level widget
              const Sugarlevelresult(),



              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(top: 20, bottom: 30),
                  child: GestureDetector(
                  onTap: () {
                  
                    Navigator.of(context).pushNamedAndRemoveUntil(mainentrypoint, (Route<dynamic> route) => false);
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
                      child: Text(AppLocalizations.of(context)!.welcomeTo,
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

            ],
          ),
        ),
      )
    );
  }
}