


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/src/reportsmain/widgets/reporttypebtns.dart';
import 'package:kisukari_mobile_app/src/reportsmain/widgets/topdurationbtns.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReportsMainScreen extends StatefulWidget {
  const ReportsMainScreen({super.key});

  @override
  State<ReportsMainScreen> createState() => _ReportsMainScreenState();
}

class _ReportsMainScreenState extends State<ReportsMainScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        title: 
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: 
              Text(
                AppLocalizations.of(context)!.reportscreentitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainRed,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              )
          )
      ),
      body: 
        LayoutBuilder(
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
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        
                        Column(
                          children: [

                            //duration btns
                            DurationBtns(),

                            // report buttons
                            ReportTypeBtns(),


                          ],
                        ),
                        
                        



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

