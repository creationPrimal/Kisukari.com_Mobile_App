
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/screens/groupinfoscreen.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/screens/groupposts.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/screens/widgets/grouptypepost.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommunityGroupScreen extends StatefulWidget {
  const CommunityGroupScreen({super.key});

  @override
  State<CommunityGroupScreen> createState() => _CommunityGroupScreenState();
}

class _CommunityGroupScreenState extends State<CommunityGroupScreen> {
  @override
  Widget build(BuildContext context) {

    // font size provider
    final fontSizeProvider = Provider.of<PostFontSize>(context);

    return Scaffold(
      body: 
        Column(
          children: [
            Expanded(
              child: CustomScrollView(
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
                    actions: [
                       // this button is to increase text font size and reduce
                      if (Provider.of<PostFontSize>(context).x == 20) // increases font
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Consumer<PostFontSize>(
                            builder: (context, postFontSize, child) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: IconButton(
                                  onPressed: () {
                                    fontSizeProvider.incrementFont(20);
                                  },
                                   style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite),
                                    padding: WidgetStateProperty.all(const EdgeInsets.only(left: 4, right: 4)),
                                  ),
                                  icon: Icon(Icons.format_size,
                                    color: Kcolors.mainBlack,
                                    size: 30,
                                  )
                                ),
                              );
                            }
                          ),
                        ),
                      if (Provider.of<PostFontSize>(context).x == 22) // decreases font
                        SizedBox(
                          width: 50,
                          height: 40,
                          child: Consumer<PostFontSize>(
                            builder: (context, postFontSize, child) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: IconButton(
                                  onPressed: () {
                                    fontSizeProvider.decrementFont(22);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite),
                                    padding: WidgetStateProperty.all(const EdgeInsets.only(left: 4, right: 4)),
                                  ),
                                  icon: Icon(Icons.format_size,
                                    color: Kcolors.mainRed,
                                    size: 30,
                                  )
                                ),
                              );
                            }
                          ),
                        ),
                      //popup menu
                      Container(
                        width: 30,
                        height: 40,
                        margin: const EdgeInsets.only(right: 5.0),
                        child: PopupMenuButton<String>(
                        onSelected: (String value) {
                          if (value == 'option_1') { // if user picks option to to view post
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => const GroupInfoScreen()
                              )
                            );
                          }
                        },
                        padding: const EdgeInsets.all(0),
                        color: Kcolors.mainWhite,
                        iconSize: 40,
                        iconColor: Kcolors.mainWhite,
                        itemBuilder: (BuildContext context) {
                          return [
                            // Define the menu items
                            PopupMenuItem<String>(
                              value: 'option_1',
                              child: Text(AppLocalizations.of(context)!.communityGroupInfo,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'option_2',
                              child: Text(AppLocalizations.of(context)!.communityLeaveGroup,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )
                              ),
                            ),
                          ];
                        },
                                                                  ),
                      )
                    ],
                    pinned: true, 
                    titleSpacing: 0,
                    flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,  
                    expandedTitleScale: 1.2,
                    titlePadding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
                    title: SizedBox(
                      height: 55,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: Text('Groupname',
                                  overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainWhite,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                ),
                                Text('${AppLocalizations.of(context)!.communityMembers}: 254',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainWhite,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  )
                                ),
                              ],
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
                      )
                    ),
                    background: 
                      Stack(
                        fit: StackFit.expand,
                        children: [ 
                          CachedNetworkImage(
                            imageUrl: "https://i.pinimg.com/236x/25/d6/0c/25d60c0d19691d215d72e986e09f5714.jpg",
                            fit: BoxFit.cover,
                            placeholder: (context, url) => Center(
                            child:  Shimmer.fromColors(
                              baseColor: Colors.grey.shade300,
                              highlightColor: Colors.grey.shade100,
                              child:
                                Container(
                                color: Kcolors.lightGrey,
                                                                                )
                            ),
                          ),
                          errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainBlack, size: 30),
                          ),
                          // gradient
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.6), // Top color with opacity
                                  Colors.transparent,            // Bottom transparent color
                                ],
                                stops: const [0.3, 1.0],
                              ),
                            ),
                          ), 
                        ]
                      ),
                    ),
                  ),
              
                  // group posts
                  const GroupPosts(),
                ],
              ),
            ),
            // type group post
            const Align(
              alignment: Alignment.bottomCenter,
              child: GroupTypePost(),
            ),
          ],
        ),
    );
  }
}