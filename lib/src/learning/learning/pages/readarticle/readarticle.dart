

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/providers/articleproviders.dart';
import 'package:shimmer/shimmer.dart';
import 'package:provider/provider.dart';

class ReadArticle extends StatefulWidget {
  const ReadArticle({super.key});

  @override
  State<ReadArticle> createState() => _ReadArticleState();
}

class _ReadArticleState extends State<ReadArticle> {

  bool sourceVisible = false;
  double toolsheight = 41;
  bool toolsactive = false;

  @override
  Widget build(BuildContext context) {

    final fontSize = Provider.of<ArticleFontSize>(context);

    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title:
          Text(
            AppLocalizations.of(context)!.navbarLearn,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          )
      ),
      body:
        Container(
          margin: const EdgeInsets.only(right: 15, left: 15),
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  // top title and image
                  SliverToBoxAdapter(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // title
                            Text(
                              '1. Vyakula bora',
                              style: GoogleFonts.roboto(
                                color: Kcolors.darkBlue,
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            Container(
                              height: 200,
                              margin: const EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
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
                                      errorWidget: (context, url, error) => Icon(Icons.refresh, color: Kcolors.mainRed, size: 30),
                                    )
                                )
                            ),
                            
                          ]
                        )
                    ),
                  ),
              
                  //body content title
                  SliverToBoxAdapter(
                    child:
                      Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // body title
                               Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tellus arcu, faucibus nec finibus non, laoreet quis nisi.',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: fontSize.x,
                                  height: 1.2,
                                )
                              ),
                              // important notice
                              Container(
                                margin: const EdgeInsets.only(top: 10, bottom: 10),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Kcolors.mainRed.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child:
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child:
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${AppLocalizations.of(context)!.articleimportant}:',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: 17,
                                              height: 1.2,
                                              fontWeight: FontWeight.bold,
                                            )
                                          ),
                                          Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tellus ',
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainBlack,
                                              fontSize: fontSize.x,
                                              height: 1.2,
                                              fontStyle: FontStyle.italic,
                                            )
                                          ),
                                        ]
                                      )
                                  )
                              )
                            ]
                          )
                      )
                  ),
              
                  // main body contents
                  SliverToBoxAdapter(
                    child:
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // body title
                               Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tellus arcu, faucibus nec finibus non, laoreet quis nisi. Mauris euismod placerat imperdiet. Vivamus egestas non ligulaet malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tellus arcu, faucibus nec finibus non, laoreet quis nisi. Mauris euismod placerat imperdiet. Vivamus egestas non ligulaet malesuada.',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: fontSize.x,
                                  height: 1.2,
                                )
                              ),
                              
                            ]
                          )
                      )
                  ),
              
                  // sources
                  SliverToBoxAdapter(
                    child:
                      GestureDetector(
                        onTap: () {
                          if (sourceVisible) {
                            setState(() {
                              sourceVisible = false;
                            });
                          } else {
                            setState(() {
                              sourceVisible = true;
                            });
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: Kcolors.lightGrey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child:
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //top btn
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.articlesources,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.darkBlue,
                                          fontSize: fontSize.x,
                                          height: 1.2,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      Icon(Icons.expand_more, color: Kcolors.darkBlue, size: 28,)
                                    ]
                                  ),
                                  // body sources
                                  if(sourceVisible)
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10.0),
                                     child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tellus arcu, faucibus nec finibus non, laoreet quis nisi. Mauris euismod placerat imperdiet. Vivamus egestas non ligulaet malesuada. ',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: fontSize.x,
                                        height: 1.2,
                                      )
                                    ),
                                   ),
                                  
                                ]
                              ),
                            )
                        ),
                      )
                  ),
              
                  // next topic
                  SliverToBoxAdapter(
                    child:
                      Container(
                        margin: const EdgeInsets.only(bottom: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // title
                            Text(
                              AppLocalizations.of(context)!.articlenextarticle,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainRed,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Kcolors.mainGrey.withOpacity(0.5)
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    //image
                                    Container(
                                      height: 80, width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    // contents
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.65,
                                      child:
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            // title
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                // title
                                                SizedBox(
                                                  width: MediaQuery.of(context).size.width * 0.6,
                                                  child:
                                                    Text(
                                                      '2. Kupunguza Vyakula',
                                                      overflow: TextOverflow.ellipsis,
                                                      style: GoogleFonts.roboto(
                                                        color: Kcolors.darkBlue,
                                                        fontSize: 22,
                                                        fontWeight: FontWeight.bold,
                                                      )
                                                    )
                                                ),
                                                // read icon
                                                // Icon(Icons.check_circle_outline_rounded, color: Kcolors.mainGreen, size: 20)
                                              ]
                                            ),
                                            // body
                                            Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut ',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: fontSize.x,
                                                height: 1.2
                                              )
                                            )
                                          ]
                                        )
                                    )
                                  ]
                                ),
                              ),
                            )
                          ]
                        ),
                      )
                  )
              
                ]
              ),

              // tools
              Positioned(
                bottom: 25,
                right: 15,
                child:
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    height: toolsheight,
                    decoration: const BoxDecoration(
                      color: Colors.transparent
                    ),
                    child:
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // buttons
                        
                            // fontsize
                            if (toolsactive)
                            SizedBox(
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  if(fontSize.x == 20) {
                                    fontSize.incrementFont(); // increase font
                                  } else {
                                    fontSize.decrementFont(); // decrease font
                                  }
                                  
                                },
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  )),
                                  backgroundColor: WidgetStateProperty.all(fontSize.x == 20 ? Kcolors.mainRed : Kcolors.darkBlue)
                                ),
                                child:
                                  Row(
                                    children: [
                                      Text(
                                        fontSize.x == 20 ? AppLocalizations.of(context)!.articlefontexpand : AppLocalizations.of(context)!.articlefontminimize,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      //icon
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Icon(Icons.format_size, size: 24, color: Kcolors.mainWhite),
                                      )
                                      
                                    ]
                                  )
                              ),
                            ),
                        
                            // save
                            if (toolsactive)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: SizedBox(
                                height: 40,
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                    )),
                                    backgroundColor: WidgetStateProperty.all( Kcolors.mainRed)
                                  ),
                                  child:
                                    Row(
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.save,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        //icon
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Icon(Icons.bookmark, size: 24, color: Kcolors.mainWhite),
                                        )
                                        
                                      ]
                                    )
                                ),
                              ),
                            ),
                        
                            // share
                            if (toolsactive)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: SizedBox(
                                height: 40,
                                child: TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                    )),
                                    backgroundColor: WidgetStateProperty.all( Kcolors.mainRed)
                                  ),
                                  child:
                                    Row(
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.communityShare,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainWhite,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                          )
                                        ),
                                        //icon
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10.0),
                                          child: Icon(Icons.share, size: 24, color: Kcolors.mainWhite),
                                        )
                                        
                                      ]
                                    )
                                ),
                              ),
                            ),
                        
                            // options
                            SizedBox(
                              height: 40,
                              child: TextButton(
                                onPressed: () {
                                  if (toolsactive) {
                                    setState(() {
                                      toolsheight = 41;
                                      toolsactive = false;
                                    });
                                  } else {
                                    setState(() {
                                      toolsheight = 190;
                                      toolsactive = true;
                                    });
                                  }
                                },
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  )),
                                  backgroundColor: WidgetStateProperty.all(toolsactive ? Kcolors.darkBlue : Kcolors.mainRed)
                                ),
                                child:
                                  Row(
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.articleactions,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      //icon
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Icon(Icons.list_rounded, size: 24, color: Kcolors.mainWhite),
                                      )
                                      
                                    ]
                                  )
                              ),
                            )
                          ]
                        ),
                      )
                  )
              )
            ],
          ),
        )
    );
  }
}