

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/more_section/appsettings/widgets/subscriptionstatus.dart';
import 'package:kisukari_mobile_app/src/more_section/appsettings/widgets/switchnotifications.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 240, 240, 240),
        scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        title:  
          SizedBox(
          width: MediaQuery.of(context).size.width * 0.65,
          child: 
            Center(
              child: Text(
                AppLocalizations.of(context)!.appSettingsTitle,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainRed,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                )
              ),
            )
        ),
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
            Container(
              margin: const EdgeInsets.all(15),
              child:
                Column(
                  children: [

                    // top buttons
                    Container(
                      decoration: BoxDecoration(
                        color: Kcolors.mainWhite,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [

                              // profile
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, mainprofilescreen);
                                },
                                child: SizedBox(
                                  child:
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.7,
                                          child: Text(
                                              AppLocalizations.of(context)!.appProfileTitle,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600
                                              )
                                            ),
                                        ),
                                          Icon(Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                          color: Kcolors.darkBlue,
                                          )
                                        ]
                                      ),
                                    )
                                  ),
                              ),
                          
                              // gender
                              /* GestureDetector(
                                onTap: () => showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                  builder: (context) => 
                                  Container(
                                    height: 200,
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      )
                                    ),
                                    child: const ProfileGenderPicker(),
                                  ),
                                ),
                                child: SizedBox(
                                child:
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                    
                                      Text(
                                          AppLocalizations.of(context)!.gender,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600
                                          )
                                        ),
                                        Text(
                                          'Me',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.darkBlue,
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                      ]
                                    ),
                                  )
                                ),
                              ), */
                          
                              //line bar
                              Padding(
                                padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey.withOpacity(0.5)
                                  )
                                ),
                              ),

                              // notifications
                              GestureDetector(
                                onTap: () => showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                  builder: (context) => 
                                  Container(
                                    height: 200,
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      )
                                    ),
                                    child: const SwitchNotifications(),
                                  ),
                                ),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child:
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.7,
                                          child: Text(
                                              AppLocalizations.of(context)!.homenotifications,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600
                                              )
                                            ),
                                        ),
                                          Icon(Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                          color: Kcolors.darkBlue,
                                          )
                                        ]
                                      ),
                                    )
                                  ),
                              ),
                          
                              //line bar
                              Padding(
                                padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey.withOpacity(0.5)
                                  )
                                ),
                              ),

                              // language
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, languageScreen);
                                },
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child:
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.7,
                                          child: Text(
                                              AppLocalizations.of(context)!.language,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600
                                              )
                                            ),
                                        ),
                                          Icon(Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                          color: Kcolors.darkBlue,
                                          )
                                        ]
                                      ),
                                    )
                                  ),
                              ),
                          
                              //line bar
                              Padding(
                                padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey.withOpacity(0.5)
                                  )
                                ),
                              ),


                              // subscription status
                              GestureDetector(
                                 onTap: () => showMaterialModalBottomSheet(
                                  expand: false,
                                  context: context,
                                  backgroundColor: Kcolors.mainWhite,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                  builder: (context) => 
                                  Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainWhite,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      )
                                    ),
                                    child: const SubscriptionStatus(),
                                  ),
                                ),
                                child: SizedBox(
                                  child:
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                      
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.7,
                                          child: Text(
                                              AppLocalizations.of(context)!.appSettingssubscriptionstatus,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w600
                                              )
                                            ),
                                        ),
                                          Icon(Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                          color: Kcolors.darkBlue,
                                          )
                                        ]
                                      ),
                                    )
                                  ),
                              ),
                          
                             
                          
                          
                            ]
                          ),
                        )
                    ),

                    // separation
                    //line bar
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey.withOpacity(0.5)
                        )
                      ),
                    ),



                     // below buttons
                    Container(
                      decoration: BoxDecoration(
                        color: Kcolors.mainWhite,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [

                              // logout
                              SizedBox(
                                child:
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                      Container(
                                        height: 20,
                                        width: 20,
                                        margin: const EdgeInsets.only(right: 15),
                                        child:
                                          Image.asset(
                                            Kicons.logoutIcon,
                                            fit: BoxFit.cover,
                                          )
                                        
                                      ),
                                    
                                      Text(
                                          AppLocalizations.of(context)!.morescreenLogOutBtn,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600
                                          )
                                        ),
                                      ]
                                    ),
                                  )
                                ),
                          
                              //line bar
                              Padding(
                                padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightGrey.withOpacity(0.5)
                                  )
                                ),
                              ),

                              // delete account
                              SizedBox(
                                child:
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                      Container(
                                        height: 20,
                                        width: 20,
                                        margin: const EdgeInsets.only(right: 15),
                                        child:
                                          Image.asset(
                                            Kicons.deleteColoredIcon,
                                            fit: BoxFit.cover,
                                          )
                                        
                                      ),
                                    
                                      Text(
                                          AppLocalizations.of(context)!.appSettingsdeleteaccount,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600
                                          )
                                        ),
                                      ]
                                    ),
                                  )
                                ),
                          
                              
                          
                            ]
                          ),
                        )
                    ),

                  ],
                )
            )
        )

    );
  }
}