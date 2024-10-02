


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/introduction/secondscreen/widgets/diabetestypes_widget.dart';
import 'package:kisukari_mobile_app/src/introduction/secondscreen/widgets/diabeticduration_widget.dart';

class SecondScreenTypes extends StatefulWidget {
  const SecondScreenTypes({super.key});

  @override
  State<SecondScreenTypes> createState() => _SecondScreenTypesState();
}

class _SecondScreenTypesState extends State<SecondScreenTypes> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        leading: const CustomBackButton(),
        centerTitle: true,
        title: 
          SizedBox(
            height: 22,
            child:
            Image.asset(
              Kimages.logoTitle,
              fit: BoxFit.contain,
            )
          )
      ),
      body:
      LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                
                    // checklist title for diabetes types
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        AppLocalizations.of(context)!.selectDiabetesType,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                
                    // checklist for diabetes types widget
                    const DiabetestypesWidget(),
                
                    // diabetic duration of a patient
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        AppLocalizations.of(context)!.selectDiabeticDuration,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                
                    const DiabeticDurationWidget(),
                
                     Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 20, bottom: 30),
                        child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                                      // Process data
                          }
                        
                          Navigator.pushNamed(context, thirdintrodialog);
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            color: Kcolors.mainRed,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: Text(AppLocalizations.of(context)!.continueNext,
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
              )
            ),
          );
        }
      )
    );
  }
}