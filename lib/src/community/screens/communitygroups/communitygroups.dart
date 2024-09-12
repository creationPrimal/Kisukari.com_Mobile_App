

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/widgets/joinedgroups.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/widgets/othergroups.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommunityGroups extends StatefulWidget {
  const CommunityGroups({super.key});

  @override
  State<CommunityGroups> createState() => _CommunityGroupsState();
}

class _CommunityGroupsState extends State<CommunityGroups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      CustomScrollView(
        slivers: [
          // tile
          SliverToBoxAdapter(
            child:
              Padding(
                padding: const EdgeInsets.all(15),
                child:
                  Text(
                    AppLocalizations.of(context)!.communityMyGroups,
                    style: GoogleFonts.roboto(
                      color: Kcolors.mainBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  )
              )
          ),
          // my groups 
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const JoinedGroupTile(); // Friendtile
              },
              childCount: 3, 
            ),
          ),

          // other groups title
          SliverToBoxAdapter(
            child:
              Padding(
                padding: const EdgeInsets.all(15),
                child:
                  Text(
                    AppLocalizations.of(context)!.communityMoreGroups,
                    style: GoogleFonts.roboto(
                      color: Kcolors.mainBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                  )
              )
          ),
          // other groups
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const OtherGroupsTile(); // Friendtile
              },
              childCount: 6, 
            ),
          ),
        ],
      ),
    );
     
  }
}





