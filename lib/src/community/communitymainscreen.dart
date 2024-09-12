

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:badges/badges.dart' as badges;
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityfavs/communityfavs.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityfriends/communityfriends.dart';
import 'package:kisukari_mobile_app/src/community/screens/communitygroups/communitygroups.dart';
import 'package:kisukari_mobile_app/src/community/screens/communityhome/communityhome.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {

  
  int _selectedScreen = 0; // screen selection
  late List<Widget> communityscreens = [
      const CommunityHome(),
      const CommunityGroups(),
      const CommunityFriends(),
      const CommunityFavs(),
  ];

  
  // initialize 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    tabButtons();
  }

  late List<TabButtons> tabbuttons;

  void tabButtons() {
    tabbuttons = [
      TabButtons(name: AppLocalizations.of(context)!.communityMainHome, icon: Icons.home, isActive: true, notificationcount: ""),
      TabButtons(name: AppLocalizations.of(context)!.communityMainGroups, icon: Icons.wechat, isActive: false, notificationcount: "3"),
      TabButtons(name: AppLocalizations.of(context)!.communityMainFriends, icon: Icons.group, isActive: false, notificationcount: ""),
      TabButtons(name: AppLocalizations.of(context)!.communityMainFavourites, icon: Icons.bookmark_added_outlined, isActive: false, notificationcount: ""),
    ];
  }

  void _tabTapChange(int index) {
    setState(() {
      _selectedScreen = index;
      for (int i = 0; i < tabbuttons.length; i++) {
        tabbuttons[i].isActive = false; // deactivate all buttons 
      }
      tabbuttons[index].isActive = true; // activate the button
    });
  }



  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        title: 
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 105,
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: const AssetImage('assets/app_images/yassinimage.png'), // Use cached network image
                    backgroundColor: Kcolors.lightBlue,
                  ),
                ),
                 
                Container(
                  width: 105,
                  alignment: Alignment.center,
                  height: 22,
                  child:
                    Text(
                      AppLocalizations.of(context)!.navbarCommunity,
                      style: GoogleFonts.roboto(
                        color: Kcolors.mainRed,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      )
                    )
                ),

                SizedBox(
                  child:
                    Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: 
                        badges.Badge(
                          badgeAnimation: const badges.BadgeAnimation.slide(),
                          badgeContent: Text('13',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainWhite,
                            fontSize: 10,
                          )
                          ),
                          position: badges.BadgePosition.topEnd(top: 0, end: -5),
                          badgeStyle: badges.BadgeStyle(
                            padding: const EdgeInsets.all(3),
                            badgeColor: Kcolors.darkBlue,
                          ),
                          child: 
                          IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, communitymessages);
                            },
                            icon:
                              const Icon(Icons.message_outlined,
                            size: 25,
                            ),
                          ),
                        )
                    ),
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: 
                        badges.Badge(
                          badgeAnimation: const badges.BadgeAnimation.slide(
                            toAnimate: true,
                          ),
                          badgeContent: Text('13',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainWhite,
                            fontSize: 10,
                          )
                          ),
                          position: badges.BadgePosition.topEnd(top: 0, end: -5),
                          badgeStyle: badges.BadgeStyle(
                            padding: const EdgeInsets.all(3),
                            badgeColor: Kcolors.mainRed,
                          ),
                          child: 
                          IconButton(
                            onPressed: () {},
                            icon:
                              const Icon(Icons.notifications_outlined,
                            size: 27,
                            ),
                          ),
                        )
                    ),
                    Container(
                      width: 20,
                      height: 40,
                      margin: const EdgeInsets.only(left: 5),
                      child: 
                        IconButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(const EdgeInsets.all(0))
                          ),
                          icon:
                            const Icon(Icons.more_vert,
                            size: 30,
                            )
                        ),
                    )
                  ],
                )
                )
              ]
            )
          ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child:
            // Navigation
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(bottom: 5, left: 15, right: 15, top: 7),
              decoration: BoxDecoration(
                color: Kcolors.lightBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child:
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      tabbuttons.length, (index) {
                        final btn = tabbuttons[index];
                        return 
                          ElevatedButton(
                            onPressed: () {
                              _tabTapChange(index);
                            },
                            style: ButtonStyle(
                              shadowColor: WidgetStateProperty.all(Colors.transparent),
                              backgroundColor: WidgetStateProperty.all(Colors.transparent),
                              padding: WidgetStateProperty.all(const EdgeInsets.only(left: 15, right: 15)),
                              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              ))
                            ),
                            child: SizedBox(
                            child:
                              Column(
                                children: [
                                  btn.notificationcount.isNotEmpty ? // check if the notification count is not empty
                                    badges.Badge(
                                      badgeContent: Text(btn.notificationcount,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 10,
                                      )
                                      ),
                                      position: badges.BadgePosition.topEnd(top: -2, end: -10),
                                      badgeStyle: badges.BadgeStyle(
                                        padding: const EdgeInsets.all(5),
                                        badgeColor: Kcolors.darkBlue,
                                      ),
                                      child: Icon(btn.icon, size: 30, color: btn.isActive ? Kcolors.mainRed : Kcolors.mainBlack, )
                                    ) 
                                    :
                                    // if the notification count is empty display this instead
                                    Icon(btn.icon, size: 30, color: btn.isActive ? Kcolors.mainRed : Kcolors.mainBlack, ) ,
                                  Text(
                                    btn.name,
                                    style: GoogleFonts.roboto(
                                      color: btn.isActive ? Kcolors.mainRed : Kcolors.mainBlack,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )
                                  )
                                ]
                              )
                                                        ),
                          );
                      }
                    )
                  ),
                )
            ),
        )
      ),
      body: 
        // body screens
        communityscreens[_selectedScreen]
    );
  }
}


class TabButtons{
  TabButtons({
    required this.name,
    required this.icon,
    required this.isActive,
    required this.notificationcount,
  });

  String name;
  IconData icon;
  bool isActive;
  String notificationcount;
}