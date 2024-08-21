
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/home/models/remindertabsmodel.dart';

class HomeReminderTabs extends StatelessWidget {
  const HomeReminderTabs({super.key});

  @override
  Widget build(BuildContext context) {

    List<ReminderTabs> reminderTabs = [
    ReminderTabs (
      title: AppLocalizations.of(context)!.homeRemindersSugar,
      date: '04 June, 2024',
      time: '10:34 am'
    ),
    ReminderTabs (
      title: AppLocalizations.of(context)!.homeRemindersInsulin,
      date: '04 June, 2024',
      time: '10:34 am'
    ),
    ReminderTabs (
      title: AppLocalizations.of(context)!.homeRemindersExcercise,
      date: '04 June, 2024',
      time: '10:34 am'
    )
  ];


    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: 
              Text(
                AppLocalizations.of(context)!.homeRemindersTitle,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainBlack,
                  fontSize: 19,
                  fontWeight: FontWeight.bold
                )
              ),
            ),

            //slider
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 102,
              child:
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: reminderTabs.map((ReminderTabs reminderTabs) {
                        return Container(
                          width: 150,
                          height: 85,
                          margin: const EdgeInsets.only(right: 10.0),
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Kcolors.lightGrey,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Kcolors.mainBlack.withOpacity(0.1),
                                spreadRadius: 0.5,
                                blurRadius: 0.4,
                                offset: const Offset(1 , 2)
                              )
                            ]
                          ),
                          child: 
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(reminderTabs.title,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    )
                                    ),
                                    Icon(Icons.delete,
                                    size: 16,
                                    color: Kcolors.mainBlack
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.calendar_month,
                                      color: Kcolors.mainRed,
                                      size: 18,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text(reminderTabs.date,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 15,
                                            height: 1
                                          )
                                        ),
                                      ),
                                    ]
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.access_time,
                                      color: Kcolors.mainRed,
                                      size: 18,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0),
                                        child: Text(reminderTabs.time,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 15,
                                            height: 1
                                          )
                                        ),
                                      ),
                                    ]
                                  ),
                                )
                              ]
                            )
                          
                        );
                      }).toList(),
                    ),
                )
            )
          ],
        ),
    );
  }
}


