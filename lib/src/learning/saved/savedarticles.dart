

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SavedArticles extends StatelessWidget {
  const SavedArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(right: 15, left: 15, top: 20),
            child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // image
                  Container(
                    height: 100, width: 100,
                    decoration: BoxDecoration(
                      color: Kcolors.lightGrey,
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  // contents
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // title
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.55,
                              child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Historia fupi ya kisukari',
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                    Row(
                                      children: [
                                        ConstrainedBox(
                                          constraints: const BoxConstraints(
                                            maxWidth: 130,
                                          ),
                                          child: IntrinsicWidth(
                                            child: RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '${AppLocalizations.of(context)!.by}: ',
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainBlack,
                                                      fontSize: 16,
                                                    )
                                                  ),
                                                  TextSpan(
                                                    text: 'Dr. Yasini ',
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainBlack,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  )
                                                ]
                                              )
                                            ),
                                          ),
                                        ),
                                        // icon
                                        Icon(Icons.verified_sharp, color: Kcolors.mainBlue, size: 17),
                                        // date
                                        Text(
                                          ' 12/23/2024',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainGrey,
                                            fontSize: 14,
                                          )
                                        ),
                                      ],
                                    ),
                                    
                                  ],
                                )
                            ),
                            SizedBox(
                              height: 35, width: 35,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark, color: Kcolors.mainRed, size: 20)
                              )
                            )
                          ]
                        ),
                        // body
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipi cing elit. Sed do eiusmod tempor incididunt ut ',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 20,
                            height: 1.2,
                          )
                        ),
                      ]
                    ),
                  )
                ]
              )
          );
        },
        childCount: 3,
      )
    );
  }
}