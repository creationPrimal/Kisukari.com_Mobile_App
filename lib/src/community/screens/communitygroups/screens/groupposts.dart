



import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/models/postmodel.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/screens/communitypostimage.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ionicons/ionicons.dart';
class GroupPosts extends StatefulWidget {
  const GroupPosts({super.key});

  @override
  State<GroupPosts> createState() => _GroupPostsState();
}

class _GroupPostsState extends State<GroupPosts> {



  @override
  Widget build(BuildContext context) {

    final loadingProvider = Provider.of<HomePostLoader>(context); // loading provider
    if (loadingProvider.isLoading) {
      loadingProvider.loadPosts();
    }
    // font size provider
    final fontSizeProvider = Provider.of<PostFontSize>(context);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final post = userposts[index];
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top:10, bottom: 5, left: 15, right: 15),
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //post contents
                      loadingProvider.isLoading ? // this shows loading shimmer before displaying the posts
                      const LoadingShimmer()
                      : // displays the posts
                      SizedBox(
                        child: 
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // profileimgae
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundImage: CachedNetworkImageProvider(post.profileimg),
                                  backgroundColor: Kcolors.lightGrey,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.81,
                                child:
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // top name
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.81,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            //profile name
                                            SizedBox(
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
                                                              post.username,
                                                              overflow: TextOverflow.ellipsis, 
                                                              style: GoogleFonts.roboto(
                                                                color: Kcolors.mainBlack,
                                                                fontSize: fontSizeProvider.x,
                                                                fontWeight: FontWeight.w700,
                                                              )
                                                            ),
                                                          )
                                                      ),
                                                      post.isVerified ? // if user is verified
                                                        Padding(
                                                          padding: const EdgeInsets.only(left: 4.0),
                                                          child: Icon(Icons.verified_sharp,
                                                          size: 18,
                                                          color: Kcolors.mainBlue,
                                                          ),
                                                        )
                                                      : // else
                                                      const SizedBox.shrink(),
                                                    ],
                                                  ),
                                                  //date
                                                  Text(
                                                    post.date,
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainGrey,
                                                      fontSize: 13,
                                                      height: 1.2,
                                                      fontWeight: FontWeight.w600,
                                                    )
                                                  )
                                                  ]
                                                )
                                            ),
                                           
                                          ]
                                        ),
                                      ),
                                      // text contents
                                      Text(
                                        post.content,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: fontSizeProvider.x,
                                          height: 1.15,
                                        )
                                      ),
          
                                      // image
                                      if (post.postimage.isNotEmpty) // if image is available
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context, MaterialPageRoute(
                                                builder: (context) => (PostImageFull(postimage: post.postimage))
                                              )
                                            );
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(top: 10),
                                            decoration: BoxDecoration(
                                              color: Kcolors.lightGrey,
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: 
                                              ConstrainedBox(
                                                constraints: BoxConstraints(
                                                  minHeight: 200,
                                                  minWidth: MediaQuery.of(context).size.width * 0.81,
                                                ),
                                                child: IntrinsicHeight(
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(15),
                                                    child: CachedNetworkImage(
                                                      imageUrl: post.postimage,
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
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ),
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
                                                    "${post.likesCount}",
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 17,
                                                      color: Kcolors.mainGrey,
                                                      fontWeight: FontWeight.w600,
                                                    )
                                                  )
                                                ]
                                              ),
                                              // comments
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0, left: 8),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      height: 33,
                                                      width: 33,
                                                      child: IconButton(
                                                        onPressed: () {
                                                        },
                                                        style: ButtonStyle(
                                                          padding: WidgetStateProperty.all(const EdgeInsets.all(0))
                                                        ),
                                                        icon: 
                                                          Icon(Ionicons.chatbubble,
                                                          color: Kcolors.mainGrey,
                                                          size: 21,
                                                          )
                                                      ),
                                                    ),
                                                    Text(
                                                      "${post.commentcount}",
                                                      style: GoogleFonts.roboto(
                                                        fontSize: 17,
                                                        color: Kcolors.mainGrey,
                                                        fontWeight: FontWeight.w600,
                                                      )
                                                    )
                                                  ]
                                                ),
                                              ),
                                              
                                            ]
                                          )
                                      )
                                    ]
                                  )
                              )
                            ]
                          ),
              
                      ),
                    ]
                  )
                  
              ),
              //separating line
              Container(height:3, decoration: BoxDecoration(color: Kcolors.lightGrey.withOpacity(0.6)))
            ],
          );
        },
        childCount: userposts.length,
      )
    );

  }

}












// loadingShimmer

class LoadingShimmer extends StatefulWidget {
  const LoadingShimmer({super.key});

  @override
  State<LoadingShimmer> createState() => _LoadingShimmerState();
}

class _LoadingShimmerState extends State<LoadingShimmer> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        child: 
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // profileimgae
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Container(
                  height: 32, width: 32,
                  decoration: BoxDecoration(color: Kcolors.mainGrey,borderRadius: BorderRadius.circular(20))
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.81,
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // top name
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.81,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //profile name
                            SizedBox(
                              child:
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                    height: 20, width: 150, margin: const EdgeInsets.only(bottom: 3),
                                    decoration: BoxDecoration(color: Kcolors.mainGrey,borderRadius: BorderRadius.circular(15))
                                  ),
                                  //date
                                  Container(
                                    height: 13, width: 80, margin: const EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(color: Kcolors.mainGrey,borderRadius: BorderRadius.circular(15))
                                  ),
                                  ]
                                )
                            ),
                          ]
                        ),
                      ),
                      // text contents shimmer loader
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 18, width: MediaQuery.of(context).size.width * 0.81, margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(color: Kcolors.mainGrey,borderRadius: BorderRadius.circular(15))
                          ),
                          Container(
                            height: 18, width: MediaQuery.of(context).size.width * 0.7, margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(color: Kcolors.mainGrey,borderRadius: BorderRadius.circular(15))
                          ),
                        ],
                      ),
      
                      // image slider shimmer loader
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width * 0.81,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Kcolors.lightGrey,
                          borderRadius: BorderRadius.circular(15)
                        )
                        
                      ),
      
                      // likes, comments, saves shimmer loader
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: 
                          Container(
                            height: 30,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Kcolors.mainGrey,
                              borderRadius: BorderRadius.circular(15)
                            )
                          )
                      )
                    ]
                  )
              )
            ]
          ),
                    
      ),
    );
  }
}
