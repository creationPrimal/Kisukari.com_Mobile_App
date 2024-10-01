

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/providers/articleproviders.dart';
import 'package:provider/provider.dart';

class ArticleDiscussion extends StatefulWidget {
  const ArticleDiscussion({super.key});

  @override
  State<ArticleDiscussion> createState() => _ArticleDiscussionState();
}

class _ArticleDiscussionState extends State<ArticleDiscussion> {

  @override
  Widget build(BuildContext context) {

    
  // font size provider
  final fontSizeProvider = Provider.of<ArticleFontSize>(context);


    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index)  {
          return Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
            width: MediaQuery.of(context).size.width,
            child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: CircleAvatar(
                          radius: 16,
                          // foregroundImage: ,
                          backgroundImage: AssetImage(Kimages.profileimageIcon),
                        ),
                      ),
                      //profile name
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.82,
                          child:
                            Column(
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
                                          'Mary_brocolli',
                                          overflow: TextOverflow.ellipsis, 
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: fontSizeProvider.x,
                                            fontWeight: FontWeight.w700,
                                          )
                                        ),
                                      )
                                  ),
                                  // widget.post.isVerified ? // if user is verified
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Icon(Icons.verified_sharp,
                                      size: 18,
                                      color: Kcolors.mainBlue,
                                      ),
                                    )
                                  // : // else
                                  // const SizedBox.shrink(),
                                ],
                              ),
                                //date
                                Text(
                                  '12 May, 2024',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainGrey,
                                    fontSize: 13,
                                    height: 1.2,
                                    fontWeight: FontWeight.w600,
                                  )
                                ),
                                // text contents
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut metus eget lacus vestibulum consequat eu commodo diam. ', 
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: fontSizeProvider.x,
                                    height: 1.15,
                                  )
                                ),
                                // likes, comments, saves
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: 
                                    Row(
                                      children: [
                                        //likes
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 33,
                                              width: 33,
                                              child: IconButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                  padding: WidgetStateProperty.all(const EdgeInsets.all(0))
                                                ),
                                                icon: 
                                                  Icon(Ionicons.heart,
                                                  color: Kcolors.mainGrey,
                                                  size: 23,
                                                  )
                                              ),
                                            ),
                                            Text(
                                              "54",
                                              style: GoogleFonts.roboto(
                                                fontSize: 17,
                                                color: Kcolors.mainGrey,
                                                fontWeight: FontWeight.w600,
                                              )
                                            )
                                          ]
                                        ),
                                        
                                        
                                      ]
                                    )
                                )
                              
                              ]
                            )
                        ),
                      ),
                    ]
                  ),
                  //separating line
                  Container(height:3, decoration: BoxDecoration(color: Kcolors.lightGrey.withOpacity(0.6)))
                ],
              )
          );
        },
        childCount: 1,
      )
    );
  }
}