import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/src/more_section/doctorsrecommendations/models/reportmodel.dart';

class RecommendationReports extends StatefulWidget {
  const RecommendationReports({super.key});

  @override
  State<RecommendationReports> createState() => _RecommendationReportsState();
}

class _RecommendationReportsState extends State<RecommendationReports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: const CustomBackButton(),
        title: 
          Text(
            AppLocalizations.of(context)!.recomMyreports,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          ),
      ),
      body:
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView.builder(
            itemCount: reports.length,
            itemBuilder: (context, index) {
            final item = reports[index];
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Kcolors.mainWhite,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: const Offset(0, 3),
                        blurRadius: 4,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // date range
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child:
                                  Icon(Icons.calendar_month, color: Kcolors.mainRed, size: 30,)
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child:
                                  Text(
                                    '${item.initialDate} / ${item.lastDate}',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                              )
                            ]
                          ),
                          item.available ? // if report is available
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                  color: Kcolors.mainGreen,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child:
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                                      child: Text(
                                        AppLocalizations.of(context)!.recomdownloadpdf,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainWhite,
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    )
                                ) 
                              ),
                            )
                            :
                            // if report is not available
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                color: Kcolors.mainGold,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child:
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                                    child: Text(
                                      AppLocalizations.of(context)!.recominprogress,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                  )
                              ) 
                            )
                          ]
                        ),
                      )
                ),
              );
            }
            ),
        )
    );
  }
}