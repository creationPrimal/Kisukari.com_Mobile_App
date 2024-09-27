



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/talktousbutton.dart';

class WoundsResultsPage extends StatefulWidget {
  const WoundsResultsPage({super.key});

  @override
  State<WoundsResultsPage> createState() => _WoundsResultsPageState();
}

class _WoundsResultsPageState extends State<WoundsResultsPage> {

  bool _isLoading = true; // loader

  @override
  void initState() {
    loadData();
    super.initState();
  }
  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  } 



  @override
  Widget build(BuildContext context) {

    final width = ScreenSize.screenWidth(context);

    return 
      _isLoading ? // display loader first
      Center(
        child: Container(
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: CircularProgressIndicator(
            color: Kcolors.mainWhite,
            strokeWidth: 7,
            
          ),
        )
      )
      : // after loading
      SingleChildScrollView(
      scrollDirection: Axis.vertical, 
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 35),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // body
              Container(
                decoration: BoxDecoration(
                  color: Kcolors.woundsSkinColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          // title
                          Text(
                            AppLocalizations.of(context)!.selftestResultHead,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(height:20), // space
                          // result
                          Text(
                            AppLocalizations.of(context)!.woundtestresulttitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 60,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(height:20), // space
                          // result info
                          Text(
                            AppLocalizations.of(context)!.woundtestresultcomment,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          const SizedBox(height:20), // space
                          Text(
                            AppLocalizations.of(context)!.woundtestresultbody,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          
                        ]
                      )
                  )
              ),
              const SizedBox(height:20), // space

              // below tips
              Text(
                AppLocalizations.of(context)!.woundtestresulttipstitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainWhite,
                  fontSize: 20,
                  height: 1.2,
                )
              ),
              // tip 1
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.woundtestresulttip1,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                            Image.asset(Kimages.kukaguamiguu, fit: BoxFit.cover)
                        )
                    )
                  ]
                ),
              ),
              // tip 2
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.woundtestresulttip2,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.45,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:
                                  Image.asset(Kimages.kuoshamiguu, fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(
                              width: width * 0.45,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:
                                  Image.asset(Kimages.kukaushamiguu, fit: BoxFit.cover)
                              ),
                            ),
                          ],
                        )
                    )
                  ]
                ),
                
              ),
              // tip 3
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.woundtestresulttip3,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      width: width,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                            Image.asset(Kimages.kukatakucha, fit: BoxFit.cover)
                        )
                    )
                  ]
                ),
              ),
               // tip 4
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.woundtestresulttip4,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      width: width,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                            Image.asset(Kimages.viatuvisivyobana, fit: BoxFit.cover)
                        )
                    )
                  ]
                ),
              ),
               // tip 5
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     AppLocalizations.of(context)!.woundtestresulttip5,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      width: width,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                            Image.asset(Kimages.kutembeapeku, fit: BoxFit.cover)
                        )
                    )
                  ]
                ),
              ),
               // tip 6
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.woundtestresulttip6,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      width: width,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                            Image.asset(Kimages.kupakamafuta, fit: BoxFit.cover)
                        )
                    )
                  ]
                ),
              ),
              // tip 7
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.woundtestresulttip7,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainWhite,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width * 0.45,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:
                                  Image.asset(Kimages.majimotokuoshamiguu, fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(
                              width: width * 0.45,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child:
                                  Image.asset(Kimages.miguukwenyemoto, fit: BoxFit.cover)
                              ),
                            ),
                          ],
                        )
                    )
                  ]
                ),
                
              ),

              //buttons
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //below tab (download pdf)
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        height: 50,
                        width: width,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Kcolors.lightBlue,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppLocalizations.of(context)!.reportDownloadpdf,
                                textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Kcolors.mainBlack
                                  )
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Image.asset(
                                    Kicons.premiumIcon,
                                    fit: BoxFit.cover
                                  ),
                                )
                              ]
                            ),
                        )
                      ),
                    ),
                    
                    //report  customer service btn
                    const TalkToUsBtn(),

                    // finish
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: 
                      GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: width,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Kcolors.mainRed,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text(AppLocalizations.of(context)!.selftestResultfinish,
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
                ),
              ),
            ]
          )
      ),
    );
  }
}


