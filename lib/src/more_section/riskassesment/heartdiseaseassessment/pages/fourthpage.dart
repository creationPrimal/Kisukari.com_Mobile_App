



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/talktousbutton.dart';

class HeartFourthPage extends StatefulWidget {
  const HeartFourthPage({super.key});

  @override
  State<HeartFourthPage> createState() => _HeartFourthPageState();
}

class _HeartFourthPageState extends State<HeartFourthPage> {

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
                  color: Kcolors.mainRed,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          const SizedBox(height:10), // space
                          // Questions
      
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
                            AppLocalizations.of(context)!.selftestResulttitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '22%',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainWhite,
                                  fontSize: 60,
                                  height: 1.2,
                                  fontWeight: FontWeight.bold
                                )
                              )
                            ],
                          ),
                          const SizedBox(height:20), // space
                          // result info
                          Text(
                            AppLocalizations.of(context)!.hearttestresultcomment,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          const SizedBox(height:20), // space
                          Text(
                            AppLocalizations.of(context)!.hearttestresultbody,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
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
                        width: MediaQuery.of(context).size.width,
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
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(
                          color: Kcolors.mainWhite,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text(AppLocalizations.of(context)!.selftestResultfinish,
                          textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Kcolors.mainBlack
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
                  )
              ),

              // below buttons
             
            ]
          )
      ),
    );
  }
}


