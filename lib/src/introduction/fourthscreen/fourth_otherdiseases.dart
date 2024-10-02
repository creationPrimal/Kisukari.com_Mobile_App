





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/introduction/fourthscreen/widgets/otherdiseasesqstn.dart';
import 'package:kisukari_mobile_app/src/introduction/fourthscreen/widgets/wakeuptime.dart';

class FourthOtherdiseases extends StatelessWidget {
  const FourthOtherdiseases({super.key});

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
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  
                      
                      const Column(
                        children: [
                          // yes or no qstn
                          // alcohol and cigarette
                          Otherdiseasesqstn(),

                          // wake up time
                          WakeUpTime(),
                        ],
                      ),
                      

                      
                      
                          
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(top: 20, bottom: 30),
                          child: GestureDetector(
                          onTap: () {
                          
                            Navigator.pushNamed(context, resultsintrodialog);
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
                ),
              ),
            )
          );
        }
      )
    );
  }
}