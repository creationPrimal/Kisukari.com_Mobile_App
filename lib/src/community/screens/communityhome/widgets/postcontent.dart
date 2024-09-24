


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PostContent extends StatefulWidget {
  const PostContent({super.key});

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {

  final TextEditingController _postContentController = TextEditingController();

  @override
  void dispose() {
    _postContentController.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.lightGrey,
      appBar: AppBar(
        leading: const CustomBackButton(),
        title:
          Text(
            AppLocalizations.of(context)!.communityNewpost,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          ),
        actions: [
          Container(
            height: 30,
            margin: const EdgeInsets.only(right: 15),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Kcolors.darkBlue),
                padding: WidgetStateProperty.all(const EdgeInsets.only(left: 15, right: 15)),
              ),
              child:
                Text(
                  AppLocalizations.of(context)!.communityPostcontent,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )
                )
            ),
          )
        ]
      ),
      body:
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(15),
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                // typing area
                SizedBox(
                  child:
                    TextField(
                      controller: _postContentController,
                      keyboardType: TextInputType.text,
                      maxLines: 7,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context)!.textTyping,
                        border: /* OutlineInputBorder() */ InputBorder.none,
                      ),
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.w600,
                      )
                    )
                ),
                // buttons
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          //logic for uploading a picture
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: 
                            Row(
                              children: [
                                Icon(Icons.camera_alt,
                                color: Kcolors.mainBlack,
                                size: 30,
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 8.0),
                                //   child: Text(
                                //     AppLocalizations.of(context)!.communityPhoto,
                                //     style: GoogleFonts.roboto(
                                //       color: Kcolors.mainBlack,
                                //       fontSize: 19,
                                //       fontWeight: FontWeight.bold
                                //     )
                                //   ),
                                // )
                              ]
                            ),
                            
                        ),
                      ),
                      
                    ]
                  ),
                )
              ],
            ),
        )
    );
  }
}