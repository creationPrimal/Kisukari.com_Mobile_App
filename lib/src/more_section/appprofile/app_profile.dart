

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/widgets/profiledatepicker.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/widgets/profilegender.dart';
import 'package:kisukari_mobile_app/src/more_section/appprofile/widgets/profileimagefulldisplay.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AppProfile extends StatefulWidget {
  const AppProfile({super.key});

  @override
  State<AppProfile> createState() => _AppProfileState();
}

class _AppProfileState extends State<AppProfile> {

  String profileimageUrl = 'assets/app_images/yassinimage.png';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
      backgroundColor: Colors.grey.shade200,
        scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        centerTitle: true,
        title:  
          Text(
            AppLocalizations.of(context)!.appProfileTitle,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          ),
      ),
      body: 
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(15),
            child:
              Column(
                children: [
          
                  // top profile image
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 45),
                    child: 
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, 
                                MaterialPageRoute(
                                  builder: (context) => 
                                    ProfileImageFull(profileimageUrl: profileimageUrl),
                                ),
                              );
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              margin: const EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: 
                              CircleAvatar(
                                radius: 50,
                                foregroundImage: AssetImage(profileimageUrl), // use cached network image
                                backgroundImage: AssetImage(Kimages.profileimageIcon),
                              ),
                            ),
                          ),
                          // username
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, profiledetailsset);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth: 250,
                                  ),
                                  child: IntrinsicWidth(
                                    child: Text(
                                      'Username',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.verified_sharp,
                                  size: 21,
                                  color: Kcolors.mainBlue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.edit,
                                  size: 21,
                                  color: Kcolors.mainBlack,
                                  ),
                                )
                              ]
                            ),
                          )
                        ]
                      ),
                  ),
          
                  // personal details
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 15),
                    child:
                      Column(
                        children: [
                          
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
                                
                                    // gender
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
                                
                                
                                    // date of birth
                                    SizedBox(
                                                          child:
                                                            Padding(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                
                                   Text(
                                      AppLocalizations.of(context)!.dateOfBirth,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600
                                      )
                                    ),
                                    const ProfileDatePicker(),
                                  ]
                                ),
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


                          //measurements
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, profiledetailsset);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                  
                                      // height
                                      SizedBox(
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          
                                            Text(
                                                AppLocalizations.of(context)!.height,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600
                                                )
                                              ),
                                              Text(
                                                '5.11',
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
                                  
                                  
                                      // diabetes type
                                      SizedBox(
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          
                                            Text(
                                                AppLocalizations.of(context)!.diabetesType,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600
                                                )
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!.diabetesType1,
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
                                  
                                      
                                      // diabetes MEASUREMENT type
                                      SizedBox(
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          
                                            Text(
                                                AppLocalizations.of(context)!.sugarMeasurementsType,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600
                                                )
                                              ),
                                              Text(
                                                'mmol/L',
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
                                  
                                      // diabetes Medication type
                                      SizedBox(
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          
                                            Text(
                                                AppLocalizations.of(context)!.typeofmedication,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600
                                                )
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!.insulin,
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

                          // contacts
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, profiledetailsset);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    children: [
                                  
                                      // email
                                      SizedBox(
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                          
                                              Text(
                                                AppLocalizations.of(context)!.email,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600
                                                )
                                              ),

                                              SizedBox(
                                                width: 230,
                                                child: Text(
                                                  '@email.com',
                                                  textAlign: TextAlign.end,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.darkBlue,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
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
                                  
                                      // email
                                      SizedBox(
                                      child:
                                        Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                        
                                              Text(
                                                AppLocalizations.of(context)!.phonenumber,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w600
                                                )
                                              ),
                                              
                                              SizedBox(
                                                width: 200,
                                                child: Text(
                                                  '+255',
                                                  textAlign: TextAlign.end,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.darkBlue,
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),


                                            ]
                                          ),
                                        )
                                      ),
                                  
                                  
                                  
                                    ]
                                  ),
                                )
                            ),
                          )

                          

                        ]
                      )
                  )
                ],
              )
          ),
        )
    );
  }
}