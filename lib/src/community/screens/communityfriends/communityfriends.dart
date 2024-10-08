

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class CommunityFriends extends StatefulWidget {
  const CommunityFriends({super.key});

  @override
  State<CommunityFriends> createState() => _CommunityFriendsState();
}

class _CommunityFriendsState extends State<CommunityFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      CustomScrollView(
        slivers: [
          // SliverAppBar: scrolls with the content
          SliverAppBar(
            expandedHeight: 45.0, 
            floating: false, 
            pinned: true, 
            leading: null,
            backgroundColor: Colors.transparent,
            title: 
                IconButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite)
              ),
              icon: 
                Icon(Icons.search,
                  color: Kcolors.mainBlack,
                  size: 30,
                ),
            ),
           
          ),
          
          
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const FriendTile(); // Friendtile
              },
              childCount: 20, 
            ),
          ),
        ],
      ),
    );
     
  }
}





// FRiend tile
class FriendTile extends StatefulWidget {
  const FriendTile({super.key});

  @override
  State<FriendTile> createState() => _FriendTileState();
}

class _FriendTileState extends State<FriendTile> {
  @override
  Widget build(BuildContext context) {

    final loadingProvider = Provider.of<FriendsLoader>(context);
    if (loadingProvider.isLoading) {
      loadingProvider.loadPosts();
    }

    return SizedBox(
      child:
        Column(
          children: [
            loadingProvider.isLoading ? // show loader
            const FriendsLoaderShimmer()
            : // show content
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10.0),
              child: Container(
                margin: const EdgeInsets.all(0),
                child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child:
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                // backgroundImage: const NetworkImage('https://i.pinimg.com/564x/78/99/90/78999048d99edfcc463d0340d3dd1a1f.jpg'),
                                backgroundColor: Kcolors.mainGrey,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
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
                          )
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(CupertinoIcons.chat_bubble_text,
                            size: 24,
                            color: Kcolors.mainGrey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Icon(Icons.person_remove_rounded,
                            size: 24,
                            color: Kcolors.mainRed,
                            ),
                          ),
                        ]
                      )
                    ]
                  ),
              ),
            ),
            
            // separating line
            Container( 
              height: 2,
              decoration: BoxDecoration(
                color: Kcolors.lightGrey.withOpacity(0.4),
              ),
            )
          ]
        ),
    );
  }
}





// shimmer loader for friends
class FriendsLoaderShimmer extends StatelessWidget {
  const FriendsLoaderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child:
        Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10.0),
      child: Container(
        margin: const EdgeInsets.all(0),
        child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child:
                  Row(
                    children: [
                      Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                          color: Kcolors.mainGrey,
                          borderRadius: BorderRadius.circular(40)
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Kcolors.mainGrey,
                                borderRadius: BorderRadius.circular(15)
                              )
                            )
                          ],
                        ),
                      ),
                      
                    ]
                  )
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Kcolors.mainGrey,
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Kcolors.mainGrey,
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ],
              )
              
            ]
          ),
      ),
    ),

    );
  }
}

