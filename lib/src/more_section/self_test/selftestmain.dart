


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/main.dart';

class SeleTestMain extends StatefulWidget {
  const SeleTestMain({super.key});

  @override
  State<SeleTestMain> createState() => _SeleTestMainState();
}

class _SeleTestMainState extends State<SeleTestMain> {

  //show loader before results
 bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Start the 5-second delay
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false; // Updates the state to stop loading when becomes false but when true it loads
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

        _isLoading ? // display loader before opening
        const InitialLoader()
        : // display the screen after loader

        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child:
                    Image.asset(
                      Kimages.selftestImage,
                      fit: BoxFit.cover
                    )
                ),
                Positioned.fill(
                  child: 
                    Container(
                      decoration: BoxDecoration(
                        color: Kcolors.mainBlack.withOpacity(0.7)
                      )
                    )
                ),
                Positioned(
                  top: 40,
                  child:
                    //app bar
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: 
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                 decoration: BoxDecoration(
                                  color: Kcolors.mainBlack.withOpacity(0)
                                ),
                                child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios,
                                color: Kcolors.mainWhite
                                ),
                                                            ),
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width * 0.72,
                                 decoration: BoxDecoration(
                                  color: Kcolors.mainBlack.withOpacity(0)
                                ),
                                child: 
                                  Center(
                                    child: 
                                    Text(
                                      AppLocalizations.of(context)!.morescreenTest,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      )
                                    )
                                  ),
                                  
                              ),
                            ]
                          ),
                        )
                        
                    )
                ),
                //body
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    decoration: BoxDecoration(
                        color: Kcolors.mainBlack.withOpacity(0)
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // title
                            Text(
                              AppLocalizations.of(context)!.selftestWelcome,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainWhite,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                           Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 15.0),
                                 child: Text(
                                  AppLocalizations.of(context)!.selftestWelcomeText1,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainWhite,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  )
                                  ),
                               ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  AppLocalizations.of(context)!.selftestWelcomeText2,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainWhite,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Text(
                                  AppLocalizations.of(context)!.selftestWelcomeText3,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainWhite,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  )
                                ),
                              ),
                            ]
                           ),

                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, selftestsecondscreen);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 15.0),
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
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    )
                                                                  ),
                                  ),
                              ),
                            )
                          ]
                        ),
                      )
                      
                  ),
                ),
                // bottom
                Positioned(
                  bottom: 60,
                  child:
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child:
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                            '${AppLocalizations.of(context)!.selftestWelcomeReference}: American Diabetes Association (ADA)',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 17,
                            )
                                                  ),
                          ),
                        ),
                    )
                )
              ]
            )
        )
        
    );
  }
}

