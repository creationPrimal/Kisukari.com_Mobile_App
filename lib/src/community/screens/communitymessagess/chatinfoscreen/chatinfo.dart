

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatinfoscreen/infoprofileimage.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatinfoscreen/widgets/chatinfoimages.dart';

class ChatInfo extends StatefulWidget {
  const ChatInfo({super.key});

  @override
  State<ChatInfo> createState() => _ChatInfoState();
}

class _ChatInfoState extends State<ChatInfo> {

  //user profile image
  String userprofileimg = "https://i.pinimg.com/564x/e5/79/c2/e579c27e297497db22273861f8461a39.jpg";

  // tab togle
  int isToggled = 0;

  void _alignCenterRedLine() { // right
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
    return Scaffold(
      body: 
        CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false, 
              pinned: true, 
              titleSpacing: 0,
              leading: const CustomBackButton(),
              backgroundColor: Kcolors.mainWhite,
              title: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.71,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              AppLocalizations.of(context)!.homenotifications,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )
                            ),
                          )
                        ]
                      ),
                    ),
            
                        
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: Icon(Icons.person_remove_rounded,
                          color: Kcolors.mainRed,
                          size: 25,
                        )
                      ),
                    )
                        
                        
                      ],
                    )
                  ,
            ),

            // profile image
            SliverToBoxAdapter(
              child:
                Container(
                  margin: const EdgeInsets.all(15),
                  child:
                    Center(
                      child:
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context, MaterialPageRoute(
                                    builder: (context) => UserProfileImage(userprofileimg: userprofileimg,)
                                    )
                                );
                              },
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: CachedNetworkImageProvider(userprofileimg),
                                backgroundColor: Kcolors.mainGrey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Username',
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.darkBlue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Icon(Icons.verified_sharp,
                                    size: 18,
                                    color: Kcolors.mainBlue,
                                    ),
                                  ),
                                ]
                              ),
                            ),
                          ]
                        )
                    )
                )
            ),

            // TAB BAR
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
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite
                              ),
                              child: 
                                Center(
                                  child:
                                    Text(
                                    AppLocalizations.of(context)!.communityPhotos,
                                    style: GoogleFonts.roboto(
                                      color: isToggled == 0 ? Kcolors.mainRed : Kcolors.mainBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                ),
                            ),
                          ),
                          // button 2
                          GestureDetector(
                            onTap: () {
                              _alignCenterRedLine(); // display tips and align the red line to it
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                color: Kcolors.mainWhite
                              ),
                              child: 
                                Center(
                                  child:
                                    Text(
                                    AppLocalizations.of(context)!.communityVideos,
                                    style: GoogleFonts.roboto(
                                      color:  isToggled == 1 ? Kcolors.mainRed : Kcolors.mainBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
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
                                alignment: isToggled == 0 ? Alignment.centerLeft : isToggled == 1 ? Alignment.centerRight : Alignment.centerLeft,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                                child: Container(
                                  height: 3,
                                  width: MediaQuery.of(context).size.width * 0.5,
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
              ),
            ),

            // grid items images
            if (isToggled == 0) // if images is picked
              const ChatInfoImages(),

          ]
        ),
    );
  }
}