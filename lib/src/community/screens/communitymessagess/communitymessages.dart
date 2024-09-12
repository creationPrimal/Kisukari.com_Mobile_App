

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/widgets/messagetile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommunityMessages extends StatefulWidget {
  const CommunityMessages({super.key});

  @override
  State<CommunityMessages> createState() => _CommunityMessagesState();
}

class _CommunityMessagesState extends State<CommunityMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      CustomScrollView(
        slivers: [
          // SliverAppBar: scrolls with the content
          SliverAppBar( 
            floating: false, 
            pinned: true, 
            leading: const CustomBackButton(),
            backgroundColor: Kcolors.mainWhite,
            title: 
              RichText(
                text: TextSpan(
                  children: [
                    // TextSpan(
                    //   text: '23 ',
                    //     style: GoogleFonts.roboto(
                    //       color: Kcolors.mainBlack,
                    //       fontSize: 22,
                    //       fontWeight: FontWeight.bold
                    //     )
                    // ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.communityMessages,
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainRed,
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        )
                    )
                  ]
                )
              )
            ,
           
          ),
          
          // scrollable friend list
          SliverToBoxAdapter(
            child:
              Container(
                margin: const EdgeInsets.all(15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton(
                       onPressed: () {},
                       style: ButtonStyle(
                         backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite)
                       ),
                       icon: 
                         Icon(Icons.search,
                           color: Kcolors.mainBlack,
                           size: 30,
                         ),
                        ),
                      Row(
                        children: List.generate( // list of friends profile images
                          10, (index) {
                            return 
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Kcolors.lightBlue,
                                ),
                              );
                          }
                        )
                      )
                    ],
                  ),
                ),
              )
          ),
          
          // messages here
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const MessageTile(); // Friendtile
              },
              childCount: 15, 
            ),
          ),
        ],
      ),
    );
     
  }
}






