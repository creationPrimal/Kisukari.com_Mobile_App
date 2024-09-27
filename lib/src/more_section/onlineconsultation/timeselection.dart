

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/models/timemodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConsultTimePick extends StatefulWidget {
  final dynamic selectedDate;
  const ConsultTimePick({super.key, required this.selectedDate});

  @override
  State<ConsultTimePick> createState() => _ConsultTimePickState();
}

class _ConsultTimePickState extends State<ConsultTimePick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton()
      ),
      body:
        SingleChildScrollView(
          child:
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
              child:
                Column(
                  children: [
                    // title and body
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child:
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.selectedDate!.weekday == 1 ? AppLocalizations.of(context)!.consultmonday
                                  : widget.selectedDate!.weekday == 2 ? AppLocalizations.of(context)!.consulttuesday
                                  : widget.selectedDate!.weekday == 3 ? AppLocalizations.of(context)!.consultwednesday
                                  : widget.selectedDate!.weekday == 4 ? AppLocalizations.of(context)!.consultthursday
                                  : widget.selectedDate!.weekday == 5 ? AppLocalizations.of(context)!.consultfriday
                                  : widget.selectedDate!.weekday == 6 ? AppLocalizations.of(context)!.consultsaturday
                                  : widget.selectedDate!.weekday == 7 ? AppLocalizations.of(context)!.consultsunday : '',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 21,
                                    height: 1.2,
                                    fontWeight: FontWeight.w500
                                  )
                                ),
                                Text(
                                  ', ${widget.selectedDate!.day}-${widget.selectedDate!.month}-${widget.selectedDate!.year}',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainRed,
                                    fontSize: 21,
                                    height: 1.4,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ]
                            ),
                            Text(
                              AppLocalizations.of(context)!.consultsselecttime,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 36,
                                height: 1.2,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            
                          ]
                        )
                    ),

                    // time list
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child:
                        Column(
                          children: List.generate(
                            timelist.length, (index) {
                              final time = timelist[index];
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: time.isActive ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          for (int i = 0; i < timelist.length; i++) {
                                            timelist[i].isActive = false;
                                          }
                                          timelist[index].isActive = true;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        width: time.isActive ? MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width * 0.9,
                                        duration: const Duration(milliseconds: 300), // Animation duration
                                        curve: Curves.easeInOut, 
                                        margin: const EdgeInsets.only(bottom: 15), 
                                        decoration: BoxDecoration(
                                          color: time.isActive ? Kcolors.darkBlue : Kcolors.mainWhite,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: time.isActive ? Colors.transparent : Kcolors.mainRed,
                                          )
                                        ),
                                        child:
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Center(
                                              child:
                                                Text(
                                                time.time,
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.roboto(
                                                  color: time.isActive? Kcolors.mainWhite : Kcolors.mainRed,
                                                  fontSize: 25,
                                                  height: 1.2,
                                                  fontWeight: FontWeight.bold
                                                )
                                              ),
                                            ),
                                          )
                                      ),
                                    ),
                                    time.isActive ? // if time is selected
                                      Row(
                                        children: [
                                          SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context, consultationcongrats);
                                            },
                                            child: AnimatedContainer(
                                            width: time.isActive ? MediaQuery.of(context).size.width * 0.43 : 0,
                                            duration: const Duration(milliseconds: 300), // Animation duration
                                            curve: Curves.easeInOut, 
                                            margin: const EdgeInsets.only(bottom: 15), 
                                            decoration: BoxDecoration(
                                              color: Kcolors.mainRed,
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(
                                                color:  Colors.transparent,
                                              )
                                            ),
                                            child:
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child:
                                                    Text(
                                                    AppLocalizations.of(context)!.consultnext,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainWhite,
                                                      fontSize: 25,
                                                      height: 1.2,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                ),
                                              )
                                                                                    ),
                                          )
                                        ]
                                      )
                                    :
                                    const SizedBox.shrink()
                                  ],
                                ),
                              );
                            }
                          )
                        )
                    )
                  ]
                )
            )
        )
    );
  }
}