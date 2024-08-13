

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _SignUpState();
}

class _SignUpState extends State<OTPScreen> {

  final _formKey = GlobalKey<FormState>();
  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        leading: const CustomBackButton(),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
                constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                
                      SizedBox(
                        child:
                        Column(
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.confirmPhonenumber,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 27,
                                    color: Kcolors.mainRed,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ],
                            ),
                
                             Container(
                              margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
                               child: Text(
                                 AppLocalizations.of(context)!.confirmPhonenumberContent,
                                 textAlign: TextAlign.center,
                                 softWrap: true,
                                 style: GoogleFonts.roboto(
                                   fontSize: 18,
                                   color: Kcolors.mainBlack,
                                   fontWeight: FontWeight.bold,
                                 )
                               ),
                             ),
                
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [



                                    OTPTextField(
                                        margin: const EdgeInsets.only(bottom: 10),
                                        controller: otpController,
                                        length: 4,
                                        width: MediaQuery.of(context).size.width,
                                        textFieldAlignment: MainAxisAlignment.spaceAround,
                                        fieldWidth: 45,
                                        fieldStyle: FieldStyle.box,
                                        outlineBorderRadius: 15,
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.darkBlue,
                                        ),
                                        onChanged: (pin) {
                                          /* print("Changed: " + pin); Do something */
                                        },
                                        onCompleted: (pin) {
                                          /* print("Completed: " + pin); Do something */
                                        }),
                                  
                                    
                                   
                                   Container(
                                     margin: const EdgeInsets.only(top: 10, right: 10),
                                     child: 
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                           Text(AppLocalizations.of(context)!.notreceivedotp,
                                           style: GoogleFonts.roboto(
                                             fontSize: 17,
                                             color: Kcolors.mainBlack,
                                             fontWeight: FontWeight.bold
                                           ),
                                           ),
                                         ],
                                       )
                                   ),
                                    
                                    GestureDetector(
                                      onTap: () {
                                        // RESEND THE OTP
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 0, bottom: 10, right: 10),
                                        child: 
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(AppLocalizations.of(context)!.resendotp,
                                              style: GoogleFonts.roboto(
                                                fontSize: 17,
                                                color: Kcolors.darkBlue,
                                                fontWeight: FontWeight.bold
                                              ),
                                              ),
                                            ],
                                          )
                                      ),
                                    ),
                
                              
                                  
                                  ],
                                ),
                              ),
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
                              if (_formKey.currentState!.validate()) {
                                          // Process data
                              }
                              Navigator.pushNamedAndRemoveUntil(context, firstintrodialog, (Route<dynamic> route) => false);

                             },
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.85,
                              margin: const EdgeInsets.only(top: 5, bottom: 20),
                              decoration: BoxDecoration(
                                color: Kcolors.mainRed,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(
                                child: Text(AppLocalizations.of(context)!.confirm,
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
                ),
              ),
            ),
          );
        }
      )
    );
  }
}