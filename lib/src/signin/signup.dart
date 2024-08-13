

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:country_code_picker/country_code_picker.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  bool _usePhoneNumber = false;
  String _errorMessage = '';


  void _validateInputs() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      // Process data
      setState(() {
        _errorMessage = '';
      });
    } else {
      setState(() {
        _errorMessage = 'Please fix the errors above'; // translate to its swahili and english localization
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
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
                  margin: const EdgeInsets.all(15),
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
                                  AppLocalizations.of(context)!.openNewAccount,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ],
                            ),
                
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    Container(
                                      height: 53,
                                      margin: const EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        color: Kcolors.lightBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.nickname,
                                          prefixIcon: Icon(CupertinoIcons.person,
                                            size: 18,
                                            color: Kcolors.darkBlue,
                                          ),
                                          floatingLabelStyle: TextStyle(color: Kcolors.mainBlack),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                                          border: InputBorder.none
                                          ),
                                          style: TextStyle(color: Kcolors.mainBlack),
                                          
                                      ),
                                    ),
                      
                      
                                    if (!_usePhoneNumber)
                                      Container(
                                        height: 53,
                                        margin: const EdgeInsets.symmetric(vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            labelText: AppLocalizations.of(context)!.email,
                                            prefixIcon: Icon(Icons.email_outlined,
                                            size: 18,
                                            color: Kcolors.darkBlue,
                                            ),
                                            floatingLabelStyle: TextStyle(color: Kcolors.mainBlack),
                                            contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                                            border: InputBorder.none
                                            ),
                                            style: TextStyle(color: Kcolors.mainBlack),
                                            
                                          
                                        ),
                                      ),
                
                
                
                                    if (_usePhoneNumber)
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          Container(
                                            height: 53,
                                            width: MediaQuery.of(context).size.width * 0.28,
                                            margin: const EdgeInsets.only(top: 8, bottom: 8, right: 10),
                                            decoration: BoxDecoration(
                                              color: Kcolors.lightBlue,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: CountryCodePicker(
                                              onChanged: print,
                                              initialSelection: 'TZ',
                                              favorite: const ['TZ' , 'KE', 'UG'],
                                              showCountryOnly: false,
                                              showOnlyCountryWhenClosed: false,
                                              alignLeft: false,
                                              padding: const EdgeInsets.all(0),
                                              textStyle: GoogleFonts.roboto(
                                                fontSize: 18,
                                                color: Kcolors.mainBlack
                                              )
                                            ),
                                          ),

                                          Container(
                                            height: 53,
                                            width: MediaQuery.of(context).size.width * 0.6,
                                            margin: const EdgeInsets.symmetric(vertical: 8),
                                            decoration: BoxDecoration(
                                              color: Kcolors.lightBlue,
                                              borderRadius: BorderRadius.circular(50)
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: AppLocalizations.of(context)!.phonenumber,
                                                floatingLabelStyle: TextStyle(color: Kcolors.mainBlack),
                                                contentPadding: const EdgeInsets.only(left: 20.0, top: 3, right: 10, bottom:3),
                                                border: InputBorder.none
                                                ),
                                                style: TextStyle(color: Kcolors.mainBlack),
                                                keyboardType: TextInputType.phone,
                                            
                                            ),
                                          ),
                                        ],
                                      ),
                
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 8, right: 8),
                                      child: SizedBox(
                                        width: MediaQuery.of(context).size.width,
                                        child: GestureDetector(
                                          onTap: () {
                                          setState(() {
                                            _usePhoneNumber = !_usePhoneNumber;
                                          });
                                        },
                                          child: 
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Icon(_usePhoneNumber ? Icons.email : Icons.phone_android_outlined, 
                                              size: 18,
                                              color: Kcolors.darkBlue,
                                              ),
                
                                              Text(_usePhoneNumber ? AppLocalizations.of(context)!.useEmail : AppLocalizations.of(context)!.useNumber,
                                              textAlign: TextAlign.end,
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                color:Kcolors.darkBlue,
                                                fontWeight: FontWeight.bold
                                              )
                                              ),
                                            ],
                                          )
                                        ),
                                      ),
                                    ),
                
                                    Container(
                                      height: 53,
                                        margin: const EdgeInsets.symmetric(vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.password,
                                          prefixIcon: Icon(Icons.lock_sharp,
                                          size: 18,
                                          color: Kcolors.darkBlue,
                                          ),
                                          floatingLabelStyle: TextStyle(color: Kcolors.mainBlack),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                                          border: InputBorder.none
                                          ),
                                          style: TextStyle(color: Kcolors.mainBlack),
                                        obscureText: true,
                                      
                                      ),
                                    ),
                
                                    Container(
                                      height: 53,
                                      margin: const EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        color: Kcolors.lightBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.confirmPassword,
                                          prefixIcon: Icon(Icons.lock_sharp,
                                          size: 18,
                                          color: Kcolors.darkBlue,
                                          ),
                                          floatingLabelStyle: TextStyle(color: Kcolors.mainBlack),
                                          contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                                          border: InputBorder.none
                                          ),
                                          style: TextStyle(color: Kcolors.mainBlack),
                                        obscureText: true,
                                        
                                      ),
                                    ),
                
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 10),
                                      child: 
                                        RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.registerAgree,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                )
                                              ),
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.termsofUse,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.darkBlue,
                                                  fontSize: 16,
                                                )
                                              ),
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.and,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                )
                                              ),
                                              TextSpan(
                                                text: AppLocalizations.of(context)!.ourprivacypolicies,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.darkBlue,
                                                  fontSize: 16,
                                                )
                                              )
                                            ]
                                          ),
                                        )
                                    ),
                
                                    if (_errorMessage.isNotEmpty)
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        _errorMessage,
                                        style: const TextStyle(color: Colors.red),
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

                              Navigator.pushNamed(context, otpscreen);
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
                                child: Text(AppLocalizations.of(context)!.register,
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
                            margin: const EdgeInsets.only(top: 7, bottom: 20),
                            child: 
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(AppLocalizations.of(context)!.ialreadyhaveanaccount,
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: Kcolors.mainBlack,
                                  fontWeight: FontWeight.bold,
                                )
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, login);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(AppLocalizations.of(context)!.login,
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      color: Kcolors.darkBlue,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                  ),
                                ),
                              ],
                            )
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