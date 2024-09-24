


import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/screens/communitycomments.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/screens/communitypostimage.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/models/postmodel.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/widgets/postlist.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommunityPostItem extends StatefulWidget {
  final PostModel post;
  const CommunityPostItem({super.key, required this.post});

  @override
  State<CommunityPostItem> createState() => _CommunityPostItemState();
}

class _CommunityPostItemState extends State<CommunityPostItem> {

  //comment controller
  final TextEditingController _commentController = TextEditingController();
  final List<String> _comments = [];

  void _sendComment() {
    if (_commentController.text.trim().isEmpty) return; // Prevent empty comments
    setState(() {
      _comments.insert(0, _commentController.text); // Insert at the top to keep recent at bottom
    });
    _commentController.clear();
  }


  @override
  Widget build(BuildContext context) {

    final loadingProvider = Provider.of<HomePostLoader>(context); // loading provider
    if (loadingProvider.isLoading) {
      loadingProvider.loadPosts();
    }
    // font size provider
    final fontSizeProvider = Provider.of<PostFontSize>(context);

    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        centerTitle: true,
        title:
          Text(AppLocalizations.of(context)!.communityPost,
          style: GoogleFonts.roboto(
            color: Kcolors.mainRed,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )
          ),
        actions: [
          // this button is to increase text font size and reduce
        if (Provider.of<PostFontSize>(context).x == 20) // increases font
          Consumer<PostFontSize>(
            builder: (context, postFontSize, child) {
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: IconButton(
                  onPressed: () {
                    fontSizeProvider.incrementFont(20);
                  },
                  icon: Icon(Icons.format_size,
                    color: Kcolors.mainBlack,
                    size: 25,
                  )
                ),
              );
            }
          ),
        if (Provider.of<PostFontSize>(context).x == 22) // decreases font
          Consumer<PostFontSize>(
            builder: (context, postFontSize, child) {
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: IconButton(
                  onPressed: () {
                    fontSizeProvider.decrementFont(22);
                  },
                  icon: Icon(Icons.format_size,
                    color: Kcolors.mainRed,
                    size: 25,
                  )
                ),
              );
            }
          )
        ]
      ),
      body: 
        FadeInUp(
          animate: true,
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    // post item
                    SliverToBoxAdapter(
                      child:
                        Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 5, left: 15, right: 15),
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
                                              foregroundImage: CachedNetworkImageProvider(widget.post.profileimg),
                                              backgroundImage: AssetImage(Kimages.profileimageIcon),
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
                                                                          widget.post.username,
                                                                          overflow: TextOverflow.ellipsis, 
                                                                          style: GoogleFonts.roboto(
                                                                            color: Kcolors.mainBlack,
                                                                            fontSize: fontSizeProvider.x,
                                                                            fontWeight: FontWeight.w700,
                                                                          )
                                                                        ),
                                                                      )
                                                                  ),
                                                                  widget.post.isVerified ? // if user is verified
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
                                                                widget.post.date,
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
                                                        //options
                                                        //popup menu
                                                        SizedBox(
                                                          width: 15,
                                                          height: 24,
                                                          child: PopupMenuButton<String>(
                                                          onSelected: (String value) {
                                                            // Handle the menu item selection
                                                            // ScaffoldMessenger.of(context).showSnackBar(
                                                            //   SnackBar(content: Text('$value')),
                                                            // );
                                                          },
                                                          padding: const EdgeInsets.all(0),
                                                          color: Kcolors.darkBlue,
                                                          itemBuilder: (BuildContext context) {
                                                            return [
                                                              // Define the menu items
                                                              PopupMenuItem<String>(
                                                                value: 'option_1',
                                                                child: Text(AppLocalizations.of(context)!.communityShare,
                                                                style: GoogleFonts.roboto(
                                                                  color: Kcolors.mainWhite,
                                                                  fontSize: 20,
                                                                  fontWeight: FontWeight.bold,
                                                                )
                                                                ),
                                                              )
                                                            ];
                                                          },
                                                                                                    ),
                                                        )
                                                      ]
                                                    ),
                                                  ),
                                                  // text contents
                                                  Text(
                                                    widget.post.content, 
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainBlack,
                                                      fontSize: fontSizeProvider.x,
                                                      height: 1.15,
                                                    )
                                                  ),
                      
                                                  // image
                                                  if (widget.post.postimage.isNotEmpty) // if image is available
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                          context, MaterialPageRoute(
                                                            builder: (context) => (PostImageFull(postimage: widget.post.postimage))
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
                                                                  imageUrl: widget.post.postimage,
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
                                                                "${widget.post.likesCount}",
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
                                                                    onPressed: () {},
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
                                                                  "${widget.post.commentcount}",
                                                                  style: GoogleFonts.roboto(
                                                                    fontSize: 17,
                                                                    color: Kcolors.mainGrey,
                                                                    fontWeight: FontWeight.w600,
                                                                  )
                                                                )
                                                              ]
                                                            ),
                                                          ),
                                                          // save
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 8.0),
                                                            child: Row(
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
                                                                      Icon(Ionicons.bookmark,
                                                                      color: Kcolors.mainGrey,
                                                                      size: 21,
                                                                      )
                                                                  ),
                                                                )
                                                              ]
                                                            ),
                                                          )
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
                    ),
                    ),

                    // comments
                    const CommunityComments()

                  ]
                ),
              ),
              // comment post
              // message input
              Align(
                alignment: Alignment.bottomCenter,
                child: 
                  Container(
                    padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom:20),
                    // decoration: BoxDecoration(
                    //   color: Kcolors.lightGrey,
                    // ),
                    child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: const AssetImage('assets/app_images/yassinimage.png'),
                            backgroundColor: Kcolors.lightGrey,
                          ),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.68,
                            decoration: BoxDecoration(
                              color: Kcolors.lightGrey,
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20),
                              child: TextField(
                                controller: _commentController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: AppLocalizations.of(context)!.textTyping,
                                ),
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: fontSizeProvider.x,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: IconButton(
                              onPressed: () {
                                _sendComment();
                              },
                              icon: Icon(Icons.send,
                              size: 27,
                              color: Kcolors.mainRed
                              ),
                            ),
                          ),
                        ]
                      ),
                  ),
              ),
            ],
          ),
        )
    );
  }
}