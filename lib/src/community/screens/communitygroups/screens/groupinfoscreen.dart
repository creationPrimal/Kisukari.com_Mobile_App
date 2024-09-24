

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GroupInfoScreen extends StatefulWidget {
  const GroupInfoScreen({super.key});

  @override
  State<GroupInfoScreen> createState() => _GroupInfoScreenState();
}

class _GroupInfoScreenState extends State<GroupInfoScreen> {
  @override
  Widget build(BuildContext context) {

    // font size provider
    final fontSizeProvider = Provider.of<PostFontSize>(context);

    return Scaffold(
      body:
        CustomScrollView(
        slivers: [
          // app Bar
          SliverAppBar(
            expandedHeight: 180,
            floating: false,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
                backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite),
                padding: WidgetStateProperty.all(const EdgeInsets.all(0)),
              ),
              icon: Icon(Icons.arrow_back_ios_new_outlined,
                color: Kcolors.mainBlack,
                size: 25,
              )
            ),
            
            pinned: true, 
            titleSpacing: 0,
            flexibleSpace: 
            FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,  
              expandedTitleScale: 1.2,
              titlePadding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
              background: 
                CachedNetworkImage(
                  imageUrl: "https://i.pinimg.com/236x/25/d6/0c/25d60c0d19691d215d72e986e09f5714.jpg",
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Center(
                    child:  
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child:
                          Container(
                          color: Kcolors.lightGrey,
                                                                          )
                      ),
                    ),
                  errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainBlack, size: 30),
                )
            ),
          ),

          // content
          SliverToBoxAdapter(
            child:
              Container(
                margin: const EdgeInsets.all(15),
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 280,
                            child: Text('Groupname',
                            overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainRed,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Kcolors.mainRed),
                                padding: WidgetStateProperty.all(const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0)),
                              ),
                              child:
                                Text(
                                  AppLocalizations.of(context)!.communityJoinGroup,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainWhite,
                                    fontSize: 19,
                                    height: 1,
                                  )
                                )
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure...',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: fontSizeProvider.x,
                            height: 1.2,
                          )
                        ),
                      ),
                      SizedBox(
                        child: Text('${AppLocalizations.of(context)!.communityMembers}: 254',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: fontSizeProvider.x,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                      // button
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        child:
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Kcolors.darkBlue),
                              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ))
                            ),
                            child: 
                              Center(
                                child: 
                                  Text(
                                    AppLocalizations.of(context)!.communityInvite,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainWhite,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    )
                                  )
                              )
                          )
                      ),
                      // leave btn
                      Container(
                      height: 50,
                      margin: const EdgeInsets.only(bottom: 15),
                      child:
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite),
                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ))
                          ),
                          child: 
                            Center(
                              child: 
                                Text(
                                  AppLocalizations.of(context)!.communityLeaveGroup,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainRed,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  )
                                )
                            )
                        )
                      ),
                    ]
                  )
              )
          )

        ]
      )
    );
  }
}