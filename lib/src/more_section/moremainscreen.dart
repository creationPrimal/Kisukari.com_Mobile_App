

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.lightGrey.withOpacity(0.4),
      appBar: AppBar(
        backgroundColor: Kcolors.lightGrey.withOpacity(0.4),
        scrolledUnderElevation: 0.0,
        title: 
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 110,
                  child: Row(
                    children: [ 
                      SizedBox(
                      height: 40,
                      width: 40,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: const AssetImage('assets/app_images/yassinimage.png'), // use cached network image
                          backgroundColor: Kcolors.lightBlue,
                        ),
                      ), ]
                  ),
                ),
                 
                SizedBox(
                  width: 110,
                  child: 
                    Center(
                      child: Text(
                        AppLocalizations.of(context)!.navbarMore,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainRed,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        )
                      ),
                    )
                ),

                GestureDetector(
                  onTap: () {
                        Navigator.pushNamed(context, subscriptionscreen); // to subscription screen
                  },
                  child: SizedBox(
                    width: 110,
                    child:
                      Container(
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [Kcolors.mainGold.withOpacity(0.7), Kcolors.mainGold], // Replace with your desired colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: 
                          Center(
                            child: Text(
                              AppLocalizations.of(context)!.morescreenPremiumtitle,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainWhite,
                                fontSize: 15,
                                fontWeight: FontWeight.w700
                              )
                            ),
                          )
                      )
                    
                  ),
                )
              ]
            )
          )
      ),
      body: 
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:  
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15),
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    // sebscription button
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, subscriptionscreen); // to subscription screen
                        },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Kcolors.mainWhite,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.1),
                              blurRadius: 0.2,
                              spreadRadius: 0.1,
                              offset: const Offset(0 , 2)
                      
                            )
                          ]
                        ),
                        child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35,
                                  width: 35,
                                  margin: const EdgeInsets.only(right: 15),
                                  child: 
                                    Image.asset(
                                      Kicons.premiumIcon,
                                      fit: BoxFit.cover,
                                    )
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.65,
                                  child: 
                                    Text(
                                       AppLocalizations.of(context)!.morescreenPremiumBtntitle,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold
                                      )
                                    )
                                )
                              ]
                            ),
                          )
                      ),
                    ),

                    //clinic & self test
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            // my clinic
                            Container(
                              width: MediaQuery.of(context).size.width * 0.44,
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Kcolors.mainBlack.withOpacity(0.1),
                                    blurRadius: 0.2,
                                    spreadRadius: 0.1,
                                    offset: const Offset(0 , 2)

                                  )
                                ]
                              ),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child:
                                          Image.asset(
                                            Kicons.hospitalIcon,
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          AppLocalizations.of(context)!.morescreenMyclinic,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                      )
                                    ]
                                  ),
                                )
                            ),

                            // self test
                            Container(
                              width: MediaQuery.of(context).size.width * 0.44,
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Kcolors.mainBlack.withOpacity(0.1),
                                    blurRadius: 0.2,
                                    spreadRadius: 0.1,
                                    offset: const Offset(0 , 2)

                                  )
                                ]
                              ),
                              child: 
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child:
                                          Image.asset(
                                            Kicons.selftestIcon,
                                            fit: BoxFit.cover,
                                          )
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          AppLocalizations.of(context)!.morescreenTest,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                      )
                                    ]
                                  ),
                                )
                            )
                          ]
                        ),
                    ),

                    // intermittent button
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, fastingmainscreen); // to fasting main screen
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Kcolors.mainWhite,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Kcolors.mainBlack.withOpacity(0.1),
                              blurRadius: 0.2,
                              spreadRadius: 0.1,
                              offset: const Offset(0 , 2)
                      
                            )
                          ]
                        ),
                        child:
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  margin: const EdgeInsets.only(right: 15),
                                  child: 
                                    Image.asset(
                                      Kicons.hourglassIcon,
                                      fit: BoxFit.cover,
                                    )
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.65,
                                  child: 
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                           AppLocalizations.of(context)!.morescreenFastingBtn,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 6.0),
                                          child: Text(
                                             AppLocalizations.of(context)!.morescreenFastingBtnContent,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 14,
                                              height: 1.2,
                                              fontWeight: FontWeight.w600
                                            )
                                          ),
                                        ),
                                      ],
                                    )
                                )
                              ]
                            ),
                          )
                      ),
                    ),

                    // plans and target button
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Kcolors.mainWhite,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Kcolors.mainBlack.withOpacity(0.1),
                            blurRadius: 0.2,
                            spreadRadius: 0.1,
                            offset: const Offset(0 , 2)

                          )
                        ]
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                margin: const EdgeInsets.only(right: 15),
                                child: 
                                  Image.asset(
                                    Kicons.targetIcon,
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: 
                                  Text(
                                     AppLocalizations.of(context)!.morescreenPlansBtn,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                              )
                            ]
                          ),
                        )
                    ),

                    // settings and more button
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Kcolors.mainWhite,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Kcolors.mainBlack.withOpacity(0.1),
                            blurRadius: 0.2,
                            spreadRadius: 0.1,
                            offset: const Offset(0 , 2)

                          )
                        ]
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [

                              // my profile
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      margin: const EdgeInsets.only(right: 15),
                                      child: 
                                        Image.asset(
                                          Kicons.profileIcon,
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.65,
                                      child: 
                                        Text(
                                           AppLocalizations.of(context)!.morescreenProfileBtn,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                    )
                                  ]
                                ),
                              ),

                              // settings
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      margin: const EdgeInsets.only(right: 15),
                                      child: 
                                        Image.asset(
                                          Kicons.settingsIcon,
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.65,
                                      child: 
                                        Text(
                                           AppLocalizations.of(context)!.morescreenSettingsBtn,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                    )
                                  ]
                                ),
                              ),

                              // policies
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 35,
                                      margin: const EdgeInsets.only(right: 15),
                                      child: 
                                        Image.asset(
                                          Kicons.policiesIcon,
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.65,
                                      child: 
                                        Text(
                                           AppLocalizations.of(context)!.morescreenPolicyBtn,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          )
                                        )
                                    )
                                  ]
                                ),
                              ),

                              // policies
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 35,
                                    margin: const EdgeInsets.only(right: 15),
                                    child: 
                                      Image.asset(
                                        Kicons.helpIcon,
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.65,
                                    child: 
                                      Text(
                                         AppLocalizations.of(context)!.morescreenHelpBtn,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold
                                        )
                                      )
                                  )
                                ]
                              ),

                            ],
                          ),
                        )
                    ),

                    // log out button
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Kcolors.mainWhite,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Kcolors.mainBlack.withOpacity(0.1),
                            blurRadius: 0.2,
                            spreadRadius: 0.1,
                            offset: const Offset(0 , 2)

                          )
                        ]
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                margin: const EdgeInsets.only(right: 15),
                                child: 
                                  Image.asset(
                                    Kicons.logoutIcon,
                                    fit: BoxFit.cover,
                                  )
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.65,
                                child: 
                                  Text(
                                     AppLocalizations.of(context)!.morescreenLogOutBtn,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                              )
                            ]
                          ),
                        )
                    ),



                  ]
                )
            ),
        )
      );
    
  }
}