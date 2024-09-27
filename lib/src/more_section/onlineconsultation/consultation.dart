

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnlineConsultation extends StatefulWidget {
  const OnlineConsultation({super.key});

  @override
  State<OnlineConsultation> createState() => _OnlineConsultationState();
}

class _OnlineConsultationState extends State<OnlineConsultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title:
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, myconsultations);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Kcolors.darkBlue,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              AppLocalizations.of(context)!.consultmyconsultations,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainWhite,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            Icon(Icons.arrow_forward, color: Kcolors.mainWhite, size: 22)
                          ]
                        ),
                      )
                  )
              ]
            ),
          )
      ),
      body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10, right: 15),
              child:
                Column(
                  children: [
                    // image
                    Container(
                      height: 335,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Kcolors.lightGrey,
                        border: Border.all(
                          color: Kcolors.mainRed,
                          width: 1.5
                        )
                      ),
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            imageUrl: "https://images.unsplash.com/photo-1582750433449-648ed127bb54?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8",
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              child: Container(decoration: BoxDecoration(color: Kcolors.mainGrey))
                            ),
                            errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainRed, size: 60)
                          ),
                        )
                    ),

                    // title and body
                    SizedBox(
                      child:
                        Column(
                          children: [
                            Text(
                              'Dr. Yasini Mustafa Joshua',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainRed,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            Text(
                              'MSc. Diabetology- University of South Wales, UK',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 18,
                                height: 1.3,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            // separating line
                            Container(height: 1.5, width: MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.only(top: 6, bottom: 6),
                            decoration: BoxDecoration(color: Kcolors.lightGrey)),
                            Text(
                              '${AppLocalizations.of(context)!.consultconsultcallwith} Dr. Yasini',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 20,
                                height: 1.2,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ]
                        )
                    ),
                    // prices and duration
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //duration
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Icon(Icons.calendar_month, color: Kcolors.mainRed, size: 60),
                                ),
                                Text(
                                  "30 ${AppLocalizations.of(context)!.reportfastingminutes}",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ]
                            ),
                            //price
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Icon(Icons.credit_card_outlined, color: Kcolors.mainRed, size: 60),
                                  ),
                                  Text(
                                    "20,000 Tsh",
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                ]
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)!.consultmainbelowbody,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 20,
                                height: 1.2,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            // buttons
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // audio call
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, consultationdate);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.45,
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainRed,
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child:
                                        Center(
                                          child:
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Icon(Icons.add_call, color: Kcolors.mainWhite, size: 24),
                                                  ),
                                                   Text(
                                                    AppLocalizations.of(context)!.consultaudiocall,
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainWhite,
                                                      fontSize: 22,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                ]
                                              ),
                                            )
                                        )
                                    ),
                                  ),
                                  // video call
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, consultationdate);
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.45,
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainRed,
                                        borderRadius: BorderRadius.circular(30)
                                      ),
                                      child:
                                        Center(
                                          child:
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 8.0),
                                                    child: Icon(Icons.video_call, color: Kcolors.mainWhite, size: 30),
                                                  ),
                                                   Text(
                                                    AppLocalizations.of(context)!.consultvideocall,
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainWhite,
                                                      fontSize: 22,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                ]
                                              ),
                                            )
                                        )
                                    ),
                                  )
                                ]
                              ),
                            )
                          ]
                        )
                    ),
                  ]
                )
            )
        )
    );
  }
}