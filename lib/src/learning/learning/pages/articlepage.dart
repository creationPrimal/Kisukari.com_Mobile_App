

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // appbar
            SliverAppBar(
            expandedHeight: 200.0, // Height when expanded
            collapsedHeight: 140,
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
                                    bottom:0, right: 0,
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
             
          )
        ]
      )
    );
  }
}