import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/models/consultationsmodel.dart';

class MyConsultations extends StatefulWidget {
  const MyConsultations({super.key});

  @override
  State<MyConsultations> createState() => _MyConsultationsState();
}

class _MyConsultationsState extends State<MyConsultations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: const CustomBackButton(),
        title: 
          Text(
            AppLocalizations.of(context)!.consultmyconsultations,
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
            itemCount: consultlist.length,
            itemBuilder: (context, index) {
            final item = consultlist[index];
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            // image
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                radius: 30,
                                foregroundImage: CachedNetworkImageProvider(item.image),
                                backgroundImage: AssetImage(Kimages.profileimageIcon)       
                              ),
                            ),
                            // body
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // title
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Icon( 
                                        item.type == 'audio' ? Icons.add_call :   // icon and color variation
                                        item.type == 'video' ? Icons.video_call : Icons.add_call
                                        , color: item.type == 'audio' ? Kcolors.mainGreen :
                                                item.type == 'video' ? Kcolors.mainGold : Colors.transparent
                                        , size: 20),
                                    ),
                                    Text(
                                      item.type == 'audio' ? AppLocalizations.of(context)!.consultitemtypetitleaudio : // title variation
                                      item.type == 'video' ? AppLocalizations.of(context)!.consultitemtypetitlevideo : AppLocalizations.of(context)!.consultitemtypetitlewith,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 20,
                                        height: 1.3,
                                        fontWeight: FontWeight.w500
                                      )
                                    )
                                  ]
                                ),
                                // name
                                Row(
                                  children: [
                                    ConstrainedBox(
                                      constraints: const BoxConstraints(
                                        maxWidth: 250,
                                      ),
                                      child: IntrinsicWidth(
                                        child: Text(
                                          item.name,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Icon(Icons.verified_sharp, color: Kcolors.mainBlue, size: 20),
                                    ),
                                  ]
                                ),
                                // if consultation failed
                                item.status == 'failed' ? // if failed try arranging again
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainGreen,
                                      borderRadius: BorderRadius.circular(30)
                                    ),
                                    child:
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10, right: 10.0, top: 5, bottom: 6),
                                        child: Text(
                                          AppLocalizations.of(context)!.consultitemplanagain,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                      ),
                                  )
                                :
                                const SizedBox.shrink(),
                                // below contents
                                Container(
                                  margin: const EdgeInsets.only(top: 15),
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8.0),
                                                  child: Icon(Icons.access_time, color: Kcolors.darkBlue, size: 20),
                                                ),
                                                Text(
                                                  item.date,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainBlack,
                                                    fontSize: 20,
                                                    height: 1.3,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 8.0),
                                                  child: Icon(Icons.calendar_month, color: Kcolors.darkBlue, size: 20),
                                                ),
                                                Text(
                                                  item.time,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainBlack,
                                                    fontSize: 20,
                                                    height: 1.3,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ],
                                            ),
                                          ]
                                        ),
                                        // status
                                        Container(
                                        decoration: BoxDecoration(
                                          color: item.status == 'pending' ? Kcolors.mainGold :
                                                 item.status == 'completed' ? Kcolors.mainGreen : Kcolors.mainRed,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child:
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10, right: 10.0, top: 5, bottom: 6),
                                            child: Text(
                                              item.status == 'pending' ?  AppLocalizations.of(context)!.consultitempending :
                                              item.status == 'completed' ? AppLocalizations.of(context)!.consultitemcompleted : AppLocalizations.of(context)!.consultitemmissed,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainWhite,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                          ),
                                      )
                                      ]
                                    )
                                )
                              ]
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