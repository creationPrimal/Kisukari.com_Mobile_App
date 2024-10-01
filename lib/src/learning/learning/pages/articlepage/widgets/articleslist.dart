

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/providers/articleproviders.dart';
import 'package:provider/provider.dart';

class ArticlesList extends StatefulWidget {
  const ArticlesList({super.key});

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  @override
  Widget build(BuildContext context) {

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const ArticleItem();
        },
        childCount: 3, 
      ),
    );
  }
}








class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {

    final fontSize = Provider.of<ArticleFontSize>(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(readarticle);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 15, right: 15, left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Kcolors.mainGrey.withOpacity(0.5)
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child:
            Row(
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
                                  '1. Vyakula bora',
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.darkBlue,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  )
                                )
                            ),
                            // read icon
                            Icon(Icons.check_circle_outline_rounded, color: Kcolors.mainGreen, size: 20)
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
            )
        )
      ),
    );
  }
}