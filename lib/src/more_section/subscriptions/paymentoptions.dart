



import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
      backgroundColor: Kcolors.mainWhite,
      scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        title:
          Text(
            AppLocalizations.of(context)!.premiumPayments,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )
          )
      ),
      body:
        FadeInRight(
          duration: const Duration(milliseconds: 350),
          animate: true,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child:  
                      Container(
                        margin: const EdgeInsets.all(15),
                        child: 
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
          
          
                              // top section
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child:
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.premiumChoosePayments,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
          
                                      // buttons div
                                      Container(
                                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                                        child: 
                                          Column(
                                            children: [
                                              // button 1. debit card
                                              Container(
                                                height: 55,
                                                width: MediaQuery.of(context).size.width,
                                                margin: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                  color: Kcolors.lightGrey,
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 25, left: 8),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Debit / Credit Card',
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 19,
                                                            fontWeight: FontWeight.bold,
                                                          )
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                          child:
                                                            Image.asset(
                                                              Kicons.debitcardIcon,
                                                              fit: BoxFit.contain
                                                            )
                                                        )
                                                      ]
                                                    ),
                                                  )
                                              ),
                                              // button 2. m pesa
                                              Container(
                                                height: 55,
                                                width: MediaQuery.of(context).size.width,
                                                margin: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                  color: Kcolors.lightGrey,
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 25, left: 8),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          'M-Pesa',
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 19,
                                                            fontWeight: FontWeight.bold,
                                                          )
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                          child:
                                                            Image.asset(
                                                              Kicons.mpesalogoIcon,
                                                              fit: BoxFit.contain
                                                            )
                                                        )
                                                      ]
                                                    ),
                                                  )
                                              ),
                                              // button 3. airtel money
                                              Container(
                                                height: 55,
                                                width: MediaQuery.of(context).size.width,
                                                margin: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                  color: Kcolors.lightGrey,
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 25, left: 8),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Airtel Money',
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 19,
                                                            fontWeight: FontWeight.bold,
                                                          )
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                          child:
                                                            Image.asset(
                                                              Kicons.airtellogoIcon,
                                                              fit: BoxFit.contain
                                                            )
                                                        )
                                                      ]
                                                    ),
                                                  )
                                              ),
                                              // button 4. Tigo pesa
                                              Container(
                                                height: 55,
                                                width: MediaQuery.of(context).size.width,
                                                margin: const EdgeInsets.symmetric(vertical: 10),
                                                decoration: BoxDecoration(
                                                  color: Kcolors.lightGrey,
                                                  borderRadius: BorderRadius.circular(15)
                                                ),
                                                child:
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8, bottom: 8, right: 25, left: 8),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          'Tigo pesa',
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 19,
                                                            fontWeight: FontWeight.bold,
                                                          )
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                          child:
                                                            Image.asset(
                                                              Kicons.tigologoIcon,
                                                              fit: BoxFit.contain
                                                            )
                                                        )
                                                      ]
                                                    ),
                                                  )
                                              ),
          
          
          
                                            ]
                                          ),
                                      )
                                    ]
                                  )
                              ),
          
          
          
                              // below button
                              Container(
                                margin: const EdgeInsets.only(top: 40, bottom: 30),
                                  child: GestureDetector(
                                  onTap: () {
                                    
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
                                      child: Text(AppLocalizations.of(context)!.premiumPay,
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
                      
          
                            ]
                          ),
                      ),
                  )
                );
            }
              
              
          ),
        )
    );
  }
}