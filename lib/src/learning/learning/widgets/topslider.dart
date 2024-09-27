

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:shimmer/shimmer.dart';

class LearnTopSlider extends StatefulWidget {
  const LearnTopSlider({super.key});

  @override
  State<LearnTopSlider> createState() => _LearnTopSliderState();
}

class _LearnTopSliderState extends State<LearnTopSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 15),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                "Editor's choice",
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(
                  color: Kcolors.mainBlack,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            // slider
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 5),
              child:
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                    Row(
                      children: [
                        //children
                        Stack(
                          children: [
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width * 0.925,
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child:
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child:
                                    CachedNetworkImage(
                                      imageUrl: "https://cdrp.in/wp-content/uploads/2023/05/Sugar-Checkup-Blog-1200x758.webp",
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
                                    )
                                )
                            ),
                            // title
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child:
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.8,
                                   child: Text(
                                    "Sugar Intake Guide",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold
                                    )
                                                                   ),
                                 ),
                            )
                          ],
                        )
                      ]
                    )
                )
            )
          ]
        )
    );
  }
}