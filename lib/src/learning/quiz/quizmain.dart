

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/providers/articleproviders.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';

class QuizMain extends StatefulWidget {
  const QuizMain({super.key});

  @override
  State<QuizMain> createState() => _QuizMainState();
}

class _QuizMainState extends State<QuizMain> {
  @override
  Widget build(BuildContext context) {

    final fontSize = Provider.of<ArticleFontSize>(context);

    return Container(
      margin: const EdgeInsets.only(right: 15, left: 15, top: 20),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // title
                Text(
                  AppLocalizations.of(context)!.quizquestion,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainBlack,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )
                ),
                // this button is to increase text font size and reduce
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: IconButton(
                    onPressed: () {
                      if(fontSize.x == 20) {
                        fontSize.incrementFont();
                      } else {
                        fontSize.decrementFont();
                      }
                    },
                    icon: Icon(Icons.format_size,
                      color: fontSize.x == 20 ? Kcolors.mainBlack : Kcolors.mainRed,
                      size: 25,
                    )
                  ),
                )
              ]
            ),

            // qstn
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 15),
              child: Text(
                'What is the main purpose of checking your blood glucose levels regularly when you have diabetes?',
                style: GoogleFonts.roboto(
                  color: Kcolors.mainBlack,
                  fontSize: fontSize.x,
                  height: 1.2,
                  fontWeight: FontWeight.w500,
                )
              ),
            ),

            // answers
            Column(
              children: [
                // choice 1
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Kcolors.lightGrey,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 2,
                    )
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'A.',
                            style: GoogleFonts.roboto(  color: Kcolors.mainBlack, fontSize: 25, fontWeight: FontWeight.bold,)
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child:
                              Text(
                              'To reduce the amount of insulin or medication needed',
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: fontSize.x,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              )
                            ),
                          ),
                          const Icon(Icons.check, color: Colors.transparent, size: 25)
                        ]
                      ),
                    )
                ),

                // choice 2
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Kcolors.mainGreen.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Kcolors.mainGreen,
                      width: 2,
                    )
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'B.',
                            style: GoogleFonts.roboto(  color: Kcolors.mainBlack, fontSize: 25, fontWeight: FontWeight.bold,)
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child:
                              Text(
                              'To understand how different foods and activities affect your blood sugar',
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: fontSize.x,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              )
                            ),
                          ),
                          Icon(Icons.check, color: Kcolors.mainGreen, size: 25)
                        ]
                      ),
                    )
                ),

                // choice 3
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Kcolors.lightGrey,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 2,
                    )
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'C.',
                            style: GoogleFonts.roboto(  color: Kcolors.mainBlack, fontSize: 25, fontWeight: FontWeight.bold,)
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child:
                              Text(
                              'To avoid needing to check your blood sugar in the future',
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: fontSize.x,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              )
                            ),
                          ),
                          const Icon(Icons.check, color: Colors.transparent, size: 25)
                        ]
                      ),
                    )
                ),

                // choice 4
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Kcolors.mainRed.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Kcolors.mainRed,
                      width: 2,
                    )
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'D.',
                            style: GoogleFonts.roboto(  color: Kcolors.mainBlack, fontSize: 25, fontWeight: FontWeight.bold,)
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child:
                              Text(
                              'To prevent gaining weight',
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: fontSize.x,
                                height: 1.2,
                                fontWeight: FontWeight.w500,
                              )
                            ),
                          ),
                          Icon(Icons.cancel_outlined, color: Kcolors.mainRed, size: 25)
                        ]
                      ),
                    )
                ),
              ]
            ),

            // explanation
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                  child: Text(
                    '${AppLocalizations.of(context)!.quizexplanation}:',
                    style: GoogleFonts.roboto(
                      color: Kcolors.darkBlue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),
                // explanation
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Regularly checking your blood glucose helps you understand how different foods, activities, and medications affect your blood sugar levels. This knowledge allows you to manage your diabetes more effectively and reduce the risk of complications.',
                    style: GoogleFonts.roboto(
                      color: Kcolors.mainBlack,
                      fontSize: fontSize.x,
                      height: 1.2,
                      fontWeight: FontWeight.w500,
                    )
                  ),
                ),
                
              ]
            ),

            // next
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:  () {},
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    decoration: BoxDecoration(
                      color: Kcolors.darkBlue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                        child: Row(
                          children: [
                            Text(
                            AppLocalizations.of(context)!.selftestforward,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: fontSize.x,
                              fontWeight: FontWeight.w600,
                            )
                            ),
                            Icon(Icons.arrow_forward_ios, color: Kcolors.mainWhite,size: 18),
                          ],
                        ),
                      ),
                  ),
                )
              ]
            )
          ]
        )
    );
  }
}