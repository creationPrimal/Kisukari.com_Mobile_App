

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/articleproviders.dart';
import 'package:provider/provider.dart';

class ArticlesTitle extends StatefulWidget {
  const ArticlesTitle({super.key});

  @override
  State<ArticlesTitle> createState() => _ArticlesTitleState();
}

class _ArticlesTitleState extends State<ArticlesTitle> {
  @override
  Widget build(BuildContext context) {

    final fontSize = Provider.of<ArticleFontSize>(context);

    return SizedBox(
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // body content
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud',
              style: GoogleFonts.roboto(
                color: Kcolors.mainBlack,
                fontSize: fontSize.x,
                height: 1.2
              )
            ),

          ]
        )
    );
  }
}