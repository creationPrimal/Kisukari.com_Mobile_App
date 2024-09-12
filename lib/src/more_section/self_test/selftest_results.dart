







import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/main.dart';

class SelfTestResultScreen extends StatefulWidget {
  const SelfTestResultScreen({super.key});

  @override
  State<SelfTestResultScreen> createState() => _SelfTestResultScreenState();
}

class _SelfTestResultScreenState extends State<SelfTestResultScreen> {

 //show loader before results
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
      body:

        _isLoading ? // display loader
        const InitialLoader()
        : // if loader finishes it displays the results
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
                Positioned(
                  top: 40,
                  child:
                    //app bar
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: 
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                 decoration: BoxDecoration(
                                  color: Kcolors.mainBlack.withOpacity(0)
                                ),
                                child: IconButton(
                                onPressed: () {
                                  Navigator.popUntil(context, (route) => route.isFirst);
                                },
                                icon: Icon(Icons.arrow_back_ios,
                                color: Kcolors.mainBlack
                                ),
                                ),
                              ),
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                 decoration: BoxDecoration(
                                  color: Kcolors.mainBlack.withOpacity(0)
                                ),
                                child: 
                                  Center(
                                    child: 
                                    Text(
                                      AppLocalizations.of(context)!.selftestResultHead,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      )
                                    )
                                  ),
                                  
                              ),
                          ],
                        )
                        
                    )
                ),
                
                //body
                FadeInRight(
                  animate: true,
                  duration: const Duration(milliseconds: 300),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.65,
                      decoration: BoxDecoration(
                          color: Kcolors.mainBlue,
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // title
                              Column(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.selftestResulttitle,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainWhite,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '10/10',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainWhite,
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: FaIcon(FontAwesomeIcons.circleExclamation,
                                            color: Colors.redAccent,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.selftestResultinfo,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainWhite,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    )
                                  ),
                                ],
                              ),
                          
                              // center
                             Column(
                              children: [
                                  Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 15.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.selftestResultbody,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 19,
                                      )
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
                                            width: MediaQuery.of(context).size.width * 0.75,
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
                                        Container(
                                        width: MediaQuery.of(context).size.width * 0.75,
                                        margin: const EdgeInsets.only(top: 20),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: MediaQuery.of(context).size.width * 0.5,
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
                                                        padding: const EdgeInsets.only(left: 7.0),
                                                        child: SizedBox(
                                                          width: MediaQuery.of(context).size.width * 0.37,
                                                          child: Text(
                                                            AppLocalizations.of(context)!.homeHospitalcustomerservicetitle,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack,
                                                              fontSize: 15,
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
                                                        fontSize: 13,
                                                        fontWeight: FontWeight.bold
                                                      )
                                                    ),
                                                  ),
                                                )
                                            )
                                          ],
                                        ),
                                      ),

                                      ]
                                    ),
                                  ),
                          
                          
                          
                              ]
                             ),
                          
                              
                            ]
                          ),
                        )
                        
                    ),
                  ),
                ),
                
                
                // bottom
                Positioned(
                  bottom: 60,
                  left: 0,
                  right: 0,
                  child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: 
                      GestureDetector(
                      onTap: () {
                        
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
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
                )
              ]
            )
        )
        
        
    );
  }
}


