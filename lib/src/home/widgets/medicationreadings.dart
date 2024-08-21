
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeMedicationReadings extends StatefulWidget {
  const HomeMedicationReadings({super.key});

  @override
  State<HomeMedicationReadings> createState() => _HomeMedicationReadingsState();
}

class _HomeMedicationReadingsState extends State<HomeMedicationReadings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Kcolors.mainWhite,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [ 
            BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2, 
            blurRadius: 10,   
            offset: const Offset(0, 2),
          )
        ]
      ),
      child:
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              // top section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //right pills section
                  Container(
                    width: MediaQuery.of(context).size.width * 0.443,
                    height: 136,
                    decoration: BoxDecoration(
                    color: Kcolors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Text(AppLocalizations.of(context)!.homepills,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 18,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Container(
                                      height: 20,
                                      width: 20,
                                      margin: const EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                        color: Kcolors.darkBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add,
                                          size: 16,
                                          color: Kcolors.mainWhite,
                                          ),
                                          padding: const EdgeInsets.all(0)
                                        
                                        ),
                                      ),
                                    )
                                ]
                              ),
                              SizedBox(
                                child: Text('Metformin 500mg',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  height: 2,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '1x / ${AppLocalizations.of(context)!.homeDay}',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ],
                                )
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: 
                                Image.asset(
                                  Kicons.doublepillsIcon,
                                  fit: BoxFit.cover
                                )
                              )
                            ]
                          )
                          
                        ]
                      ),
                    ),
                  ),

                  //left insulin section
                  Container(
                    width: MediaQuery.of(context).size.width * 0.443,
                    height: 136,
                    decoration: BoxDecoration(
                    color: Kcolors.lightGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Text(AppLocalizations.of(context)!.homeInsulin,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 18,
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                  Container(
                                      height: 20,
                                      width: 20,
                                      margin: const EdgeInsets.only(left: 8),
                                      decoration: BoxDecoration(
                                        color: Kcolors.darkBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.add,
                                          size: 16,
                                          color: Kcolors.mainWhite,
                                          ),
                                          padding: const EdgeInsets.all(0)
                                        
                                        ),
                                      ),
                                    )
                                ]
                              ),
                              SizedBox(
                                child: Text('Insulini regular: 23 Unit',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  height: 2,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                              ),
                               SizedBox(
                                child: Text('Insulin mixtard: 43 Unit',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                )
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '56 IU',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ],
                                )
                              ),
                              SizedBox(
                                height: 50,
                                width: 50,
                                child: 
                                Image.asset(
                                  Kicons.syringeIcon,
                                  fit: BoxFit.cover
                                )
                              )
                            ]
                          )
                          
                        ]
                      ),
                    ),
                  )

                ]
              ),

              //below sliding section
              SizedBox(
                child:
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        

                            // steps item
                            Container(
                              height: 115,
                              width: 150,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow( 
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 0.4, 
                                    blurRadius: 1,   
                                    offset: const Offset(0, 1.5),
                                  )
                                ]
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Text(AppLocalizations.of(context)!.homeSteps,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.darkBlue,
                                              fontSize: 18,
                                              height: 1,
                                              fontWeight: FontWeight.bold,
                                            )
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 20,
                                            margin: const EdgeInsets.only(left: 8),
                                            decoration: BoxDecoration(
                                              color: Kcolors.darkBlue,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.add,
                                                size: 16,
                                                color: Kcolors.mainWhite,
                                                ),
                                                padding: const EdgeInsets.all(0)
                                              
                                              ),
                                            ),
                                          )
                                        ]
                                      ),

                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            width: 40,
                                            child: 
                                              Image.asset(
                                                Kicons.runningshoeIconIntro,
                                                fit: BoxFit.cover
                                              )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10.0),
                                            child: Text(
                                              '4,255',
                                              style: GoogleFonts.roboto(
                                                fontSize: 24,
                                                height: 1,
                                                fontWeight: FontWeight.bold,
                                                color: Kcolors.mainBlack,
                                              )
                                            ),
                                          )
                                        ]
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                        child: RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '${AppLocalizations.of(context)!.hometarget}: ${AppLocalizations.of(context)!.homeSteps} ',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 13,
                                                  height: 1,
                                                  fontWeight: FontWeight.bold,
                                                  color: Kcolors.mainBlack,
                                                )
                                              ),
                                              TextSpan(
                                                text: '10,000',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 13,
                                                  height: 1,
                                                  fontWeight: FontWeight.bold,
                                                  color: Kcolors.mainRed,
                                                )
                                              )
                                            ]
                                          )
                                        ),
                                      ),

                                      Stack(
                                        children: [
                                          Container(
                                            height: 12,
                                            margin: const EdgeInsets.only(top: 5),
                                            decoration: BoxDecoration(
                                              color: Kcolors.mainWhite,
                                              borderRadius: BorderRadius.circular(15)
                                            )
                                          ),
                                          Positioned(
                                            top: 0,
                                            child:
                                              Container(
                                                height: 12,
                                                width: MediaQuery.of(context).size.width * 0.15,
                                                margin: const EdgeInsets.only(top: 5),
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainRed,
                                                  borderRadius: BorderRadius.circular(15)
                                                )
                                              )
                                          )
                                        ]
                                      )

                                    ],
                                  ),
                                ),
                            ),

                            //second item
                            Container(
                              height: 115,
                              width: 135,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 0.4, 
                                    blurRadius: 1,   
                                    offset: const Offset(0, 1.5),
                                  )
                                ]
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    children: [
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Text(AppLocalizations.of(context)!.homeExcercise,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.darkBlue,
                                              fontSize: 18,
                                              height: 1,
                                              fontWeight: FontWeight.bold,
                                            )
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 20,
                                            margin: const EdgeInsets.only(left: 8),
                                            decoration: BoxDecoration(
                                              color: Kcolors.darkBlue,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.add,
                                                size: 16,
                                                color: Kcolors.mainWhite,
                                                ),
                                                padding: const EdgeInsets.all(0)
                                              
                                              ),
                                            ),
                                          )
                                        ]
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 15.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(CupertinoIcons.flame,
                                            color: Kcolors.mainGold,
                                            size: 25,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text('1270 cal',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.darkBlue,
                                                fontSize: 20,
                                                height: 1,
                                                fontWeight: FontWeight.w500,
                                              )
                                              ),
                                            )
                                          ]
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 12.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.more_time,
                                            color: Kcolors.mainBlack,
                                            size: 25,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              child: Text('10:54:45',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.darkBlue,
                                                fontSize: 20,
                                                height: 1,
                                                fontWeight: FontWeight.w500,
                                              )
                                              ),
                                            )
                                          ]
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                            ),


                            //food item
                            Container(
                              height: 115,
                              width: 150,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 0.4, 
                                    blurRadius: 1,   
                                    offset: const Offset(0, 1.5),
                                  )
                                ]
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Text(AppLocalizations.of(context)!.homeFood,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.darkBlue,
                                              fontSize: 18,
                                              height: 1,
                                              fontWeight: FontWeight.bold,
                                            )
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 20,
                                            margin: const EdgeInsets.only(left: 8),
                                            decoration: BoxDecoration(
                                              color: Kcolors.darkBlue,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.add,
                                                size: 16,
                                                color: Kcolors.mainWhite,
                                                ),
                                                padding: const EdgeInsets.all(0)
                                              
                                              ),
                                            ),
                                          )
                                        ]
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 3.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '${AppLocalizations.of(context)!.homeCarbohydrate}: ',
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          color: Kcolors.mainBlack,
                                                          fontWeight: FontWeight.w600,
                                                        )
                                                      ),
                                                      TextSpan(
                                                        text: '50g',
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          color: Kcolors.darkBlue,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                      )
                                                    ]
                                                  )
                                                ),
                                              ),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 3.0),
                                                 child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '${AppLocalizations.of(context)!.homeProtein}: ',
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          color: Kcolors.mainBlack,
                                                          fontWeight: FontWeight.w600,
                                                        )
                                                      ),
                                                      TextSpan(
                                                        text: '23g',
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          color: Kcolors.darkBlue,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                      )
                                                    ]
                                                  )
                                                ),
                                               ),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 3.0),
                                                 child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '${AppLocalizations.of(context)!.homeFat}: ',
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          color: Kcolors.mainBlack,
                                                          fontWeight: FontWeight.w600,
                                                        )
                                                      ),
                                                      TextSpan(
                                                        text: '12g',
                                                        style: GoogleFonts.roboto(
                                                          fontSize: 14,
                                                          color: Kcolors.darkBlue,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                      )
                                                    ]
                                                  )
                                                ),
                                               )
                                            ]
                                          ),

                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 40,
                                                width: 40,
                                                child:
                                                  Image.asset(
                                                    Kicons.foodutensilsIcon,
                                                    fit: BoxFit.cover,
                                                  )
                                              ),
                                            ],
                                          )
                                        ]
                                      )

                                    ],
                                  ),
                                ),
                            ),

                            // bmi item
                            Container(
                              height: 115,
                              width: 150,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 0.4, 
                                    blurRadius: 1,   
                                    offset: const Offset(0, 1.5),
                                  )
                                ]
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            child: Text('BMI',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.darkBlue,
                                              fontSize: 18,
                                              height: 1,
                                              fontWeight: FontWeight.bold,
                                            )
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 20,
                                            margin: const EdgeInsets.only(left: 8),
                                            decoration: BoxDecoration(
                                              color: Kcolors.darkBlue,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.add,
                                                size: 16,
                                                color: Kcolors.mainWhite,
                                                ),
                                                padding: const EdgeInsets.all(0)
                                              
                                              ),
                                            ),
                                          )
                                        ]
                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(top:4, bottom: 4),
                                        child: 
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '28.7',
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainGold,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25,
                                                  )
                                                ),
                                                TextSpan(
                                                  text: ' kg/m\u00B2',
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainBlack,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  )
                                                )
                                              ]
                                            )
                                          )
                                      ),

                                      SizedBox(
                                        child:
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.calendar_month_outlined,
                                                        color: Kcolors.mainBlack,
                                                        size: 20
                                                        ),
                                                      Text(' June 16,',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.mainBlack,
                                                          fontSize: 16
                                                        )
                                                      )
                                                    ]
                                                  ),

                                                  Row(
                                                    children: [
                                                      Icon(Icons.access_time_outlined,
                                                        color: Kcolors.mainBlack,
                                                        size: 20
                                                        ),
                                                      Text(' 12:43 am,',
                                                        style: GoogleFonts.roboto(
                                                          color: Kcolors.mainBlack,
                                                          fontSize: 16
                                                        )
                                                      )
                                                    ]
                                                  ),
                                                ]
                                              ),
                                              SizedBox(
                                                child:
                                                  Icon(Icons.arrow_upward,
                                                  color: Kcolors.mainGold,
                                                  size: 35,
                                                  )
                                              )
                                            ]
                                          ),

                                          
                                      )

                                    ],
                                  ),
                                ),
                            ),


                          ]
                        ),
                      )
                  )
              )

            ]
          ),
        )
    );
  }
}