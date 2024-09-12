

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MessageTile extends StatefulWidget {
  const MessageTile({super.key});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {

  void _onDelete(BuildContext context) {
    // Handle delete action
    // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Delete action')));
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, communitychat);
      },
      child: Slidable(
        endActionPane: ActionPane(
          // A motion is a widget used to control how the pane animates.
          motion: const ScrollMotion(),

          // A pane can dismiss the Slidable.
          // dismissible: DismissiblePane(onDismissed: () {}),

          // All actions are defined in the children parameter.
          children: [
            // A SlidableAction can have an icon and/or a label.
            SlidableAction(
              onPressed: _onDelete,
              backgroundColor: Kcolors.mainRed,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: AppLocalizations.of(context)!.communityDelete,
            ),
          ],
        ),
        child: SizedBox(
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
                                        Row(
                                          children: [
                                            Text(
                                              'Username',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                              )
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 4.0),
                                              child: Icon(Icons.verified_sharp,
                                              size: 18,
                                              color: Kcolors.mainBlue,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 190,
                                          child: Text(
                                            'Lorem ipsum dolor sit dfghdtdhbhbdtcons..',
                                            overflow: TextOverflow.ellipsis, 
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainGrey,
                                              fontSize: 16,
                                              height: 1.2,
                                              fontWeight: FontWeight.w500,
                                            )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                              )
                          ),
                          Column(
                            children: [
                              Text(
                                '12:45',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                              // green tick,
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: FaIcon(FontAwesomeIcons.checkDouble,
                                  size: 15,
                                  color: Kcolors.mainGreen,
                                ),
                              ),
        
                              // counter messages
                              // Container(
                              //   height: 25,
                              //   decoration: BoxDecoration(
                              //     color: Kcolors.darkBlue,
                              //     borderRadius: BorderRadius.circular(20)
                              //   ),
                              //   child:
                              //     Center(
                              //       child:
                              //         Padding(
                              //           padding: const EdgeInsets.only(left: 8.0, right: 8),
                              //           child: Text(
                              //           '1',
                              //           style: GoogleFonts.roboto(
                              //             color: Kcolors.mainWhite,
                              //             fontSize: 14,
                              //             fontWeight: FontWeight.w600,
                              //           )
                              //                                           ),
                              //         ),
                              //     )
        
                              // )
                            ]
                          )
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
        ),
      ),
    );
  }
}

