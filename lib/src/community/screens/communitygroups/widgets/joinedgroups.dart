

// Joined Group tile
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/providers/communityproviders.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/screens/groupscreen.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class JoinedGroupTile extends StatefulWidget {
  const JoinedGroupTile({super.key});

  @override
  State<JoinedGroupTile> createState() => _JoinedGroupTileState();
}

class _JoinedGroupTileState extends State<JoinedGroupTile> {

  @override
  Widget build(BuildContext context) {

    final loadingProvider = Provider.of<GroupsLoader>(context);
    if (loadingProvider.isLoading) {
      loadingProvider.loadPosts();
    }

    return SizedBox(
      child:
        Column(
          children: [
            loadingProvider.isLoading ? // shows loader shimmer before opening
            const JoinedGroupLoader()
            : // display groups after loader
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => (const CommunityGroupScreen())
                  )
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10.0),
                child: Container(
                  margin: const EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
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
                                  // foregroundImage: const NetworkImage('https://i.pinimg.com/564x/78/99/90/78999048d99edfcc463d0340d3dd1a1f.jpg'),
                                  backgroundColor: Kcolors.mainGrey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 190,
                                        child: Text(
                                          'Groupname',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.roboto(
                                            color: Kcolors.mainBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          )
                                        ),
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.communityMembers}: 254',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainGrey,
                                          fontSize: 17,
                                          height: 1,
                                          fontWeight: FontWeight.w600,
                                        )
                                      ),
                                    ],
                                  ),
                                ),
                                
                              ]
                            )
                        ),
                       
                      ]
                    ),
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




// shimmer loader for groups
class JoinedGroupLoader extends StatelessWidget {
  const JoinedGroupLoader({super.key});

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
                            ),
                            Container(
                              height: 15,
                              width: 130,
                              margin: const EdgeInsets.only(top: 5),
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
              
            ]
          ),
      ),
    ),

    );
  }
}


