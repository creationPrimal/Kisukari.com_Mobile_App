

// Joined Group tile
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class JoinedGroupTile extends StatefulWidget {
  const JoinedGroupTile({super.key});

  @override
  State<JoinedGroupTile> createState() => _JoinedGroupTileState();
}

class _JoinedGroupTileState extends State<JoinedGroupTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10.0),
              child: Container(
                margin: const EdgeInsets.all(0),
                child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child:
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                // backgroundImage: const NetworkImage('https://i.pinimg.com/564x/78/99/90/78999048d99edfcc463d0340d3dd1a1f.jpg'),
                                backgroundColor: Kcolors.mainGrey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Groupname',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      )
                                    ),
                                    Text(
                                      '${AppLocalizations.of(context)!.communityMembers}: 254',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainGrey,
                                        fontSize: 17,
                                        height: 1,
                                        fontWeight: FontWeight.w600,
                                      )
                                    ),
                                  ],
                                ),
                              ),
                              
                            ]
                          )
                      ),
                     
                    ]
                  ),
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Kcolors.lightGrey.withOpacity(0.4),
              ),
            )
          ]
        ),
    );
  }
}
