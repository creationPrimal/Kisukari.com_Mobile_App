


import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class Subscriptionscreen extends StatefulWidget {
  const Subscriptionscreen({super.key});

  @override
  State<Subscriptionscreen> createState() => _SubscriptionscreenState();
}

class _SubscriptionscreenState extends State<Subscriptionscreen> {

  int addmonth = 1;
  bool monthlyBtn = false;
  int monthlyPrice = 40000; // monthly subscription
  int addyear = 1;
  bool yearlyBtn = false;
  int yearlyPrice = 140000; // year subscription

  // month calculations
  void _incrementMonths() {
    setState(() {
      addmonth++;
      monthlyPrice = 40000 * addmonth;
    });
  }
  void _decrementMonths() {
    setState(() {
      if (addmonth > 1) {
        addmonth--;
        monthlyPrice = monthlyPrice - 40000;
      }
    });
  }
  // year calcs
  void _incrementYears() {
    setState(() {
      addyear++;
      yearlyPrice = 140000 * addyear;
    });
  }
  void _decrementYears() {
    setState(() {
      if (addyear > 1) {
        addyear--;
        yearlyPrice = yearlyPrice - 140000;
      }
    });
  }
  // monthly calc display calcs
  void _displayMonthlyCalcs() {
    setState(() {
      if (!monthlyBtn) {
        monthlyBtn = true;
        yearlyBtn = false;
      }
    });
  }
  // yearly calc display calcs
  void _displayYearlyCalcs() {
    setState(() {
      if (!yearlyBtn) {
        yearlyBtn = true;
        monthlyBtn = false;
      }
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
      backgroundColor: Kcolors.mainWhite,
      scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
      ),
      body: 
        FadeInUp(
          duration: const Duration(milliseconds: 350),
          animate: true,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                  
                          // top section
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                margin: const EdgeInsets.only(bottom:10),
                                child: Text(
                                  'Say hello to your best self',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.darkBlue,
                                    fontSize: 35,
                                    height: 1.2,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom:20),
                                child: Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 17,
                                    height: 1.3,
                                    fontWeight: FontWeight.w500,
                                  )
                                ),
                              ),
                          
                          
                          
                          
                              Container(
                                margin: const EdgeInsets.only(bottom:20),
                                child:
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: const EdgeInsets.only(right: 10),
                                        child:
                                          Image.asset(
                                            Kicons.premiumIcon,
                                            fit: BoxFit.cover,
                                          )
                          
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.75,
                                        child: 
                                          Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            height: 1.3,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ),
                                      )
                                    ]
                                  )
                          
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom:20),
                                child:
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: const EdgeInsets.only(right: 10),
                                        child:
                                          Image.asset(
                                            Kicons.premiumIcon,
                                            fit: BoxFit.cover,
                                          )
                          
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.75,
                                        child: 
                                          Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            height: 1.3,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ),
                                      )
                                    ]
                                  )
                          
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom:20),
                                child:
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: const EdgeInsets.only(right: 10),
                                        child:
                                          Image.asset(
                                            Kicons.premiumIcon,
                                            fit: BoxFit.cover,
                                          )
                          
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.75,
                                        child: 
                                          Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget ',
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 17,
                                            height: 1.3,
                                            fontWeight: FontWeight.w500,
                                          )
                                        ),
                                      )
                                    ]
                                  )
                          
                              ),
                          
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(bottom:20),
                                child: 
                                  Center(
                                    child: Text(
                                      AppLocalizations.of(context)!.premiumSelectplan,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 20,
                                        height: 1.3,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),
                              ),
                          
                          
                              //Price buttons
                          
                              
                              SizedBox(
                                child:
                                  Column(
                                    children: [
          
                                      //month button
                                      GestureDetector(
                                        onTap: () {
                                           _displayMonthlyCalcs(); // display calcs
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Kcolors.mainGreen.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(15),
                                            
                                          ),
                                          child:
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only( top: 8, bottom: 8, left: 8, right: 8),
                                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          
                                                          Text(
                                                            'Tsh 40,000 / ${AppLocalizations.of(context)!.premiumpermonth}',
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack,
                                                              fontSize: 20,
                                                              height: 1.3,
                                                              fontWeight: FontWeight.bold,
                                                            )
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            width: 20,
                                                            decoration: BoxDecoration(
                                                              color: monthlyBtn ? Kcolors.darkBlue : Kcolors.mainWhite,
                                                              borderRadius: BorderRadius.circular(15),
                                                              
                                                            ),
                                                          )
                                                        ]
                                                      ),
                                                    ),
                                                    if (monthlyBtn) // if button is pressed to display this calcs
                                                      Padding(
                                                        padding: const EdgeInsets.all(8),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              height: 50,
                                                              width: MediaQuery.of(context).size.width * 0.3,
                                                              decoration: BoxDecoration(
                                                                  color: Kcolors.mainWhite,
                                                                  borderRadius: BorderRadius.circular(8),
                                                                  
                                                              ),
                                                              child:
                                                                Center(
                                                                  child: 
                                                                    Text(
                                                                    '$monthlyPrice',
                                                                    style: GoogleFonts.roboto(
                                                                      color: Kcolors.mainBlack,
                                                                      fontSize: 20,
                                                                      height: 1.3,
                                                                      fontWeight: FontWeight.bold,
                                                                    )
                                                                  ),
                                                                )
                                                            ),
                                                                          
                                                            Container(
                                                              height: 50,
                                                              width: MediaQuery.of(context).size.width * 0.5,
                                                              decoration: BoxDecoration(
                                                                  color: Kcolors.mainWhite,
                                                                  borderRadius: BorderRadius.circular(8),
                                                                  
                                                              ),
                                                              child:
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                          
                                                                    // minus btn
                                                                    Container(
                                                                      height: 25,
                                                                      width: 25,
                                                                      margin: const EdgeInsets.only(left: 10, right: 5),
                                                                      decoration: BoxDecoration(
                                                                          color: Kcolors.darkBlue,
                                                                          borderRadius: BorderRadius.circular(20),
                                                                          
                                                                      ),
                                                                      child: Center(
                                                                        child: IconButton(
                                                                          onPressed: () {
                                                                            _decrementMonths();
                                                                          },
                                                                          padding: const EdgeInsets.all(0),
                                                                          icon:
                                                                            Icon(CupertinoIcons.minus,
                                                                            color: Kcolors.mainWhite,
                                                                            size: 20,
                                                                            )
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    // months
                                                                    Text(
                                                                      '${AppLocalizations.of(context)!.premiummonths}: $addmonth',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Kcolors.mainBlack,
                                                                        fontSize: 20,
                                                                        height: 1.3,
                                                                        fontWeight: FontWeight.bold,
                                                                      )
                                                                    ),
                                                                    // add btn
                                                                    Container(
                                                                      height: 25,
                                                                      width: 25,
                                                                      margin: const EdgeInsets.only(left: 5, right: 10),
                                                                      decoration: BoxDecoration(
                                                                          color: Kcolors.darkBlue,
                                                                          borderRadius: BorderRadius.circular(20),
                                                                          
                                                                      ),
                                                                      child: Center(
                                                                        child: IconButton(
                                                                          onPressed: () {
                                                                            _incrementMonths();
                                                                          },
                                                                          padding: const EdgeInsets.all(0),
                                                                          icon:
                                                                            Icon(CupertinoIcons.add,
                                                                            color: Kcolors.mainWhite,
                                                                            size: 20,
                                                                            )
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]
                                                                )
                                                            )
                                                          ]
                                                        ),
                                                      )
                                                                        
                                                  ]
                                                ),
                                              )
                                        ),
                                      ),
                                  
                                      //year button
                                      GestureDetector(
                                        onTap: () {
                                          _displayYearlyCalcs(); // display calcs
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(top: 15),
                                          decoration: BoxDecoration(
                                            color: Kcolors.mainGold.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(15),
                                            
                                          ),
                                          child:
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only( top: 8, bottom: 8, left: 8, right: 8),
                                                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          
                                                          Text(
                                                            'Tsh 140,000 / ${AppLocalizations.of(context)!.premiumperyear}',
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack,
                                                              fontSize: 20,
                                                              height: 1.3,
                                                              fontWeight: FontWeight.bold,
                                                            )
                                                          ),
                                                          Container(
                                                            height: 20,
                                                            width: 20,
                                                            decoration: BoxDecoration(
                                                              color: yearlyBtn ? Kcolors.darkBlue : Kcolors.mainWhite,
                                                              borderRadius: BorderRadius.circular(15),
                                                              
                                                            ),
                                                          )
                                                        ]
                                                      ),
                                                    ),
                                                    if (yearlyBtn) // if button is pressed to display this calcs
                                                      Padding(
                                                        padding: const EdgeInsets.all(8),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Container(
                                                              height: 50,
                                                              width: MediaQuery.of(context).size.width * 0.3,
                                                              decoration: BoxDecoration(
                                                                  color: Kcolors.mainWhite,
                                                                  borderRadius: BorderRadius.circular(8),
                                                                  
                                                              ),
                                                              child:
                                                                Center(
                                                                  child: 
                                                                    Text(
                                                                    '$yearlyPrice',
                                                                    style: GoogleFonts.roboto(
                                                                      color: Kcolors.mainBlack,
                                                                      fontSize: 20,
                                                                      height: 1.3,
                                                                      fontWeight: FontWeight.bold,
                                                                    )
                                                                  ),
                                                                )
                                                            ),
                                                                          
                                                            Container(
                                                              height: 50,
                                                              width: MediaQuery.of(context).size.width * 0.5,
                                                              decoration: BoxDecoration(
                                                                  color: Kcolors.mainWhite,
                                                                  borderRadius: BorderRadius.circular(8),
                                                                  
                                                              ),
                                                              child:
                                                                Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                          
                                                                    // minus btn
                                                                    Container(
                                                                      height: 25,
                                                                      width: 25,
                                                                      margin: const EdgeInsets.only(left: 10, right: 5),
                                                                      decoration: BoxDecoration(
                                                                          color: Kcolors.darkBlue,
                                                                          borderRadius: BorderRadius.circular(20),
                                                                          
                                                                      ),
                                                                      child: Center(
                                                                        child: IconButton(
                                                                          onPressed: () {
                                                                            _decrementYears();
                                                                          },
                                                                          padding: const EdgeInsets.all(0),
                                                                          icon:
                                                                            Icon(CupertinoIcons.minus,
                                                                            color: Kcolors.mainWhite,
                                                                            size: 20,
                                                                            )
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    // months
                                                                    Text(
                                                                      '${AppLocalizations.of(context)!.premiumyears}: $addyear',
                                                                      style: GoogleFonts.roboto(
                                                                        color: Kcolors.mainBlack,
                                                                        fontSize: 20,
                                                                        height: 1.3,
                                                                        fontWeight: FontWeight.bold,
                                                                      )
                                                                    ),
                                                                    // add btn
                                                                    Container(
                                                                      height: 25,
                                                                      width: 25,
                                                                      margin: const EdgeInsets.only(left: 5, right: 10),
                                                                      decoration: BoxDecoration(
                                                                          color: Kcolors.darkBlue,
                                                                          borderRadius: BorderRadius.circular(20),
                                                                          
                                                                      ),
                                                                      child: Center(
                                                                        child: IconButton(
                                                                          onPressed: () {
                                                                            _incrementYears();
                                                                          },
                                                                          padding: const EdgeInsets.all(0),
                                                                          icon:
                                                                            Icon(CupertinoIcons.add,
                                                                            color: Kcolors.mainWhite,
                                                                            size: 20,
                                                                            )
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ]
                                                                )
                                                            )
                                                          ]
                                                        ),
                                                      )
                                                                        
                                                  ]
                                                ),
                                              )
                                        ),
                                      ),
                                            ]
                                          )
                                      )
                                  
                            ]
                          ),
                  
                  
                          // below button
                          Container(
                            margin: const EdgeInsets.only(top: 40, bottom: 30),
                              child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, paymentoptions);
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                  color: Kcolors.mainRed,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(
                                  child: Text(AppLocalizations.of(context)!.premiumPaynow,
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
                      )
                  ),
                ),
              );
            }
          ),
        )
    );
  }
}