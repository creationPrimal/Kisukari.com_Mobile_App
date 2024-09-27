

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/learning/learning/models/learnsliders.dart';
import 'package:shimmer/shimmer.dart';

class LearnThirdSlider extends StatefulWidget {
  const LearnThirdSlider({super.key});

  @override
  State<LearnThirdSlider> createState() => _LearnThirdSliderState();
}

class _LearnThirdSliderState extends State<LearnThirdSlider> {
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
                "Fahamu kuhusu kisukari",
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
              margin: const EdgeInsets.only(top: 10),
              child:
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                    Row(
                      children: List.generate (
                        learnthirdslider.length, (index) {
                          final item = learnthirdslider[index];
                        //children
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, articlepage);
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 150,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Kcolors.lightGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child:
                                      CachedNetworkImage(
                                        imageUrl: item.image,
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
                                bottom: 8,
                                left: 5,
                                child:
                                   SizedBox(
                                    width: 135,
                                     child: Text(
                                      item.title,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainBlack,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold
                                      )
                                                                     ),
                                   ),
                              )
                            ],
                          ),
                        );
                    })
                    )
                )
            )
          ]
        )
    );
  }
}