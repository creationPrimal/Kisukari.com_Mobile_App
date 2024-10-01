

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/providers/chatfontsize.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatscreen/widgets/chattext.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitymessagess/chatscreen/widgets/typemessage.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CommunityChatScreen extends StatefulWidget {
  const CommunityChatScreen({super.key});

  @override
  State<CommunityChatScreen> createState() => _CommunityChatScreenState();
}

class _CommunityChatScreenState extends State<CommunityChatScreen> {

  final ScrollController _scrollController = ScrollController();
  //user profile image
  String userprofileimg = "https://i.pinimg.com/564x/e5/79/c2/e579c27e297497db22273861f8461a39.jpg";
  
   @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom()); // Scrolls to the bottom after the build
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent); // Instantly scrolls to the bottom
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // SliverAppBar: scrolls with the content
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
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, communitychatinfo);
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                foregroundImage: CachedNetworkImageProvider(userprofileimg),
                                backgroundImage: AssetImage(Kimages.profileimageIcon),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Username',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 20,
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
            
                        // this button is to increase text font size and reduce
                        if (Provider.of<ChatFontSize>(context).x == 19) // increases font
                          Consumer<ChatFontSize>(
                            builder: (context, chatFontSize, child) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: IconButton(
                                  onPressed: () {
                                    chatFontSize.incrementFont(19);
                                  },
                                  icon: Icon(Icons.format_size,
                                    color: Kcolors.mainBlack,
                                    size: 25,
                                  ) 
                                ),
                              );
                            }
                          ),
                        if (Provider.of<ChatFontSize>(context).x == 22) // decreases font
                          Consumer<ChatFontSize>(
                            builder: (context, chatFontSize, child) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: IconButton(
                                  onPressed: () {
                                    chatFontSize.decrementFont(22);
                                  },
                                  icon: Icon(Icons.format_size,
                                    color: Kcolors.mainRed,
                                    size: 25,
                                  )
                                ),
                              );
                            }
                          )
                        
                      ],
                    )
                  ,
                 
                ),
            
                //messages here
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const ChatText(); // Friendtile
                    },
                    childCount: 2, 
                  ),
                ),
            
                
            
              ],
            ),
          ),

          // message input
          const Align(
            alignment: Alignment.bottomCenter,
            child: TypeMessage(),
          ),
        ],
      ),
    );
  }
}