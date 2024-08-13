

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        elevation: 0.0,
        leading: const CustomBackButton(),
        title: 
          SizedBox(
            height: 22,
            width: MediaQuery.of(context).size.width * 0.65,
            child:
            Image.asset(
              Kimages.logo,
              fit: BoxFit.contain,
            )
          )
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: 
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(AppLocalizations.of(context)!.welcomeTo,
                      style: GoogleFonts.roboto(
                        fontSize: 23,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                      )
                      ),
                      Text(' kisukari.com',
                      style: GoogleFonts.roboto(
                        fontSize: 23,
                        color: Kcolors.mainRed,
                        fontWeight: FontWeight.bold,
                      )
                      )
                    ]
                  ),
                  Text(AppLocalizations.of(context)!.welcomeNote,
                    style: GoogleFonts.roboto(
                        fontSize: 19,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                  )
                ]
              )
            ),

            SizedBox(
              child:
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 55,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: 
                                Image.asset(Kicons.testIcon,
                                fit: BoxFit.contain
                                )
                              ),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('● '),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.67,
                                        child: Text(AppLocalizations.of(context)!.introUfuatiliaji,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainBlack,
                                        ),
                                        softWrap: true,
                                        ),
                                      )
                                    ]
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('● '),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.67,
                                        child: Text(AppLocalizations.of(context)!.introElimu,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainBlack,
                                        ),
                                        softWrap: true,
                                        ),
                                      )
                                    ]
                                  )
                                ]
                              )
                            ]
                          ),
                        )
                      ]
                    )
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 55,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: 
                                Image.asset(Kicons.introcommunityIcon,
                                fit: BoxFit.contain
                                )
                              ),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('● '),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.67,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: AppLocalizations.of(context)!.introJukwaa,
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Kcolors.mainBlack,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '500k+',
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,  // This styles the "500k+" text in red
                                              ),
                                            ),
                                          ],
                                        ),
                                        softWrap: true,
                                      ),
                                    ),
                                    ]
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('● '),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.67,
                                        child: Text(AppLocalizations.of(context)!.introJumuika,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainBlack,
                                        ),
                                        softWrap: true,
                                        ),
                                      )
                                    ]
                                  )
                                ]
                              )
                            ]
                          ),
                        )
                      ]
                    )
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 55,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: 
                                Image.asset(Kicons.reportIcon,
                                fit: BoxFit.contain
                                )
                              ),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('● '),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.68,
                                        child: Text(AppLocalizations.of(context)!.introPataRipoti,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainBlack,
                                        ),
                                        softWrap: true,
                                        ),
                                      )
                                    ]
                                  ),
                                  
                                ]
                              )
                            ]
                          ),
                        )
                      ]
                    )
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: 
                          Row(
                            children: [
                              SizedBox(
                                height: 55,
                                width: MediaQuery.of(context).size.width * 0.2,
                                child: 
                                Image.asset(Kicons.hospitalIcon,
                                fit: BoxFit.contain
                                )
                              ),
                              Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('● '),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.68,
                                        child: Text(AppLocalizations.of(context)!.introVipimo,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainBlack,
                                        ),
                                        softWrap: true,
                                        ),
                                      )
                                    ]
                                  ),
                                  
                                ]
                              )
                            ]
                          ),
                        )
                      ]
                    )
                  ),

                ]
              )
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              child:
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, signup);
                     },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.85,
                      margin: const EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        color: Kcolors.mainRed,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.createAccount,
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

                  Container(
                    margin: const EdgeInsets.all(7),
                    child: 
                    Text(AppLocalizations.of(context)!.doyouhaveaccount,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      color: Kcolors.mainBlack,
                      fontWeight: FontWeight.bold,
                    )
                    )
                  ),

                   GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, login);
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.85,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Kcolors.darkBlue,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.login,
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
                ]
              )
            )

          ]
        ),
      )
    );
  }
}