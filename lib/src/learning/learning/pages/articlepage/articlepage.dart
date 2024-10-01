

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/learning/learning/pages/articlepage/widgets/articlediscussion.dart';
import 'package:kisukari_mobile_app/src/learning/learning/pages/articlepage/widgets/articleslist.dart';
import 'package:kisukari_mobile_app/src/learning/learning/pages/articlepage/widgets/articlestitle.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/providers/articleproviders.dart';
import 'package:provider/provider.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {

  int isToggled = 0;
  bool tipsScreen = false;
  bool protocalsScreen = false;

  void _alignRightRedLine() { // center
    setState(() {
      isToggled = 1;
    });
  }
  void _alignLeftRedLine() { // left side
    setState(() {
      isToggled = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    final fontSize = Provider.of<ArticleFontSize>(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // appbar
            SliverAppBar(
            expandedHeight: 200.0, // Height when expanded
            collapsedHeight: 120,
            backgroundColor: Kcolors.mainBlack,
            floating: false, // App bar doesn't float
            pinned: true, // Keeps the app bar pinned at the top
            leadingWidth: 50,
            toolbarHeight: 40,
            leading: 
             GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 40, width: 40,
                      decoration: BoxDecoration(
                        color: Kcolors.mainBlack.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: 
                        Center(child: Icon(Icons.arrow_back_ios_new_outlined, size: 20, color: Kcolors.mainWhite))
                    ),
                  ),
                ),
            actions: [
              // font expansion
              GestureDetector(
                  onTap: () {
                    if(fontSize.x == 20) {
                      fontSize.incrementFont();
                    } else {
                      fontSize.decrementFont();
                    }
                  },
                  child: Container(
                    height: 40, width: 40,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Kcolors.mainBlack.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: 
                      Center(child: Icon(Icons.format_size, size: 20, color: fontSize.x == 20 ? Kcolors.mainWhite : Kcolors.mainRed))
                  ),
                ),
             
              GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: 40, width: 40,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Kcolors.mainBlack.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: 
                      Center(child: Icon(Icons.bookmark_outlined, size: 20, color: Kcolors.mainWhite))
                  ),
                )
            ],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              collapseMode: CollapseMode.parallax,
              expandedTitleScale: 1.0,
              title: 
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 60,
                    maxHeight: 85,
                  ),
                  child: IntrinsicHeight(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 55,
                              height: 44,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: CircleAvatar(
                                      radius: 22,
                                      foregroundImage: const CachedNetworkImageProvider("https://i.pinimg.com/236x/b8/ea/6e/b8ea6e4b3db76d2fa151fbd49029ee02.jpg"),
                                      backgroundImage: AssetImage(Kimages.profileimageIcon)
                                    ),
                                  ),
                                  const Positioned(
                                    bottom:0, right: 3,
                                    child:
                                      Icon(Icons.verified_sharp,
                                      size: 19,
                                      color: Colors.blue,
                                      ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.81,
                              child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Historia ya ugonjwa wa kisukari.',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.2,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width * 0.74,
                                          child: RichText(
                                            overflow: TextOverflow.ellipsis,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: '${AppLocalizations.of(context)!.articlewrittenby}: ',
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainWhite,
                                                    fontSize: 17,
                                                    height: 1.2,
                                                  )
                                                ),
                                                TextSpan(
                                                  text: 'Dr. Lauryn Andrews',
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainWhite,
                                                    fontSize: 17,
                                                    height: 1.2,
                                                    fontWeight: FontWeight.bold,
                                                  )
                                                )
                                              ]
                                            )
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Kcolors.mainWhite,
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child:
                                            Padding(
                                              padding: const EdgeInsets.only(top: 4, bottom: 4, right: 4, left: 4),
                                              child:
                                                Row(
                                                  children: [
                                                    Icon(Icons.person_add, color: Kcolors.darkBlue, size: 17),
                                                    
                                                  ]
                                                )
                                            )
                                        )
                                      ]
                                    )
                                  ]
                                )
                            )
                          ]
                        )
                    ),
                  ),
                ),
              centerTitle: true,
              background: 
                Container(
                  decoration: BoxDecoration(
                    color: Kcolors.mainBlack,
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child:
                          CachedNetworkImage(
                            imageUrl: "https://i.pinimg.com/236x/d4/3d/a4/d43da48a9c2a52ebae90217fe5fd8e4d.jpg",
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
                            errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainWhite, size: 30),
                          )
                      ),
                      // Gradient Overlay
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                // Darker at the top
                                Colors.transparent, 
                                Colors.black.withOpacity(0.7), 
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),


          // togle
          SliverToBoxAdapter(
            child:
               SizedBox(
                width: MediaQuery.of(context).size.width,
                child: 
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // button 1
                          GestureDetector(
                            onTap: () {
                              _alignLeftRedLine(); // display protocals and align the red line to it
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(color: Kcolors.mainWhite),
                              child: 
                                Center(
                                  child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 28,
                                          margin: const EdgeInsets.only(right: 10),
                                          child: Image.asset(Kicons.articlesicon, fit: BoxFit.contain)
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.articlearticles,
                                          style: GoogleFonts.roboto(
                                            color: isToggled == 0 ? Kcolors.mainRed : Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                      ]
                                    )
                                ),
                            ),
                          ),
                          // button 2
                          GestureDetector(
                            onTap: () {
                              _alignRightRedLine(); // display tips and align the red line to it
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(color: Kcolors.mainWhite),
                              child: 
                                Center(
                                  child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                         Container(
                                          height: 28,
                                          margin: const EdgeInsets.only(right: 10),
                                          child: Image.asset(Kicons.discussionicon, fit: BoxFit.contain)
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.articlediscussions,
                                          style: GoogleFonts.roboto(
                                            color: isToggled == 1 ? Kcolors.mainRed : Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          )
                                        ),
                                      ]
                                    )
                                ),
                            ),
                          ),
                         
                        ]
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey.withOpacity(0.5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AnimatedAlign(
                                alignment: isToggled == 0 ? Alignment.centerLeft :  Alignment.centerRight, 
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                child: Container(
                                  height: 3,
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    color: Kcolors.mainRed,
                                  )
                                ),
                              ),
                            )
                          ]
                        ),
                      )
                    ],
                  ),
              )
          ),


          // articles title body
          if(isToggled == 0)
            SliverToBoxAdapter(
              child:
                Container(
                  margin: const EdgeInsets.only(top:15, right: 15, left: 15, bottom: 25),
                  child: const ArticlesTitle(),
                )
            ),
          // articles list
          if(isToggled == 0)
            const ArticlesList(),


          // discussion title body
          if(isToggled == 1)
            SliverToBoxAdapter(
              child:
                Container(
                  margin: const EdgeInsets.only(top:15, right: 15, left: 15, bottom: 25),
                  child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // icon
                        SizedBox(
                          height: 40,
                          child:
                            Image.asset(Kicons.communityBlackIcon, fit: BoxFit.contain)
                        ),
                        // title
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child:
                            Text(
                            AppLocalizations.of(context)!.articlecommunitytitle,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: fontSize.x,
                              fontStyle: FontStyle.italic,
                              height: 1.2
                            )
                          )
                        )
                      ]
                    ),
                )
            ),

          // discussion
          if(isToggled == 1)
            const ArticleDiscussion(),
        ]
      )
    );
  }
}