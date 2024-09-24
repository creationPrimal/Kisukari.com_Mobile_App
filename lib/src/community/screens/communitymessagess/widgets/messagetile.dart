

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/widgets/models/chatmodel.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

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

    final loaderProvider = Provider.of<ChatLoaderProvider>(context);
    if (loaderProvider.isLoading) {
      loaderProvider.loadChats();
    }

    return 
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final chat = chatmodel[index];
            return 
              GestureDetector(
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
                      // label: AppLocalizations.of(context)!.communityDelete,
                    ),
                  ],
                ),
                child: SizedBox(
                  child:

                    //load shimer
                    loaderProvider.isLoading ? // load for a while while fetching data
                    Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
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
                                          Container(
                                            width: 66,
                                            height: 66,
                                            decoration: BoxDecoration(
                                              color: Kcolors.mainGrey,
                                              borderRadius: BorderRadius.circular(40)
                                            )
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                    color: Kcolors.mainGrey,
                                                    borderRadius: BorderRadius.circular(15)
                                                  )
                                                ),
                                                Container(
                                                  width: 190,
                                                  height: 10,
                                                  margin: const EdgeInsets.only(top: 6),
                                                  decoration: BoxDecoration(
                                                    color: Kcolors.mainGrey,
                                                    borderRadius: BorderRadius.circular(15)
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
                    )
                    : // after loading display the data
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
                                            foregroundImage: CachedNetworkImageProvider(chat.profileimg),
                                            backgroundImage: AssetImage(Kimages.profileimageIcon),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ConstrainedBox(
                                                      constraints: const BoxConstraints(
                                                        maxWidth: 190, 
                                                      ),
                                                      child: 
                                                        IntrinsicWidth(
                                                          child: Text(
                                                            chat.username,
                                                            overflow: TextOverflow.ellipsis, 
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack,
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.w700,
                                                            )
                                                          ),
                                                        )
                                                    ),
                                                    chat.isVerified ? // if user is verified
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 4.0),
                                                        child: Icon(Icons.verified_sharp,
                                                        size: 18,
                                                        color: Kcolors.mainBlue,
                                                        ),
                                                      )
                                                    : // else
                                                    const SizedBox.shrink(),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 190,
                                                  child: Text(
                                                    chat.message,
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
                                        chat.time,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        )
                                      ),
                                      // green tick,
                                      // counter messages
                                      chat.chatcounter.isNotEmpty ? // if chat counter is not empty to display the counter
                                        Container(
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Kcolors.darkBlue,
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child:
                                            Center(
                                              child:
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                                                  child: Text(
                                                  chat.chatcounter,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainWhite,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  )
                                                  ),
                                                ),
                                            )
                  
                                        ) 
                                        : // else show blue tick
                                         Padding(
                                          padding: const EdgeInsets.only(top: 4.0),
                                          child: FaIcon(FontAwesomeIcons.checkDouble,
                                            size: 15,
                                            color: Kcolors.mainGreen,
                                          ),
                                        ),
                                     
                
                                      
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
          },
          childCount: chatmodel.length, 
        ),
      );
  }
}

