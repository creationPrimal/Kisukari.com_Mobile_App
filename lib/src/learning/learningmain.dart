

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/learning/learning/learningscreen.dart';

class LearnMain extends StatefulWidget {
  const LearnMain({super.key});

  @override
  State<LearnMain> createState() => _LearnMainState();
}

class _LearnMainState extends State<LearnMain> {

  late List<TopBtns> _btnlist;

  @override
  void didChangeDependencies() {
    initList();
    super.didChangeDependencies();
  }

  void initList() {
    _btnlist = [
      TopBtns(title: AppLocalizations.of(context)!.leartbtn1title, icon: Kicons.learnmainicon, isActive: true),
      TopBtns(title: AppLocalizations.of(context)!.leartbtn2title, icon: Kicons.readicon, isActive: false),
      TopBtns(title: AppLocalizations.of(context)!.leartbtn3title, icon: Kicons.quizicon, isActive: false),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        CustomScrollView(
          slivers: [
            // appbar
            SliverAppBar(
            expandedHeight: 170.0, // Height when expanded
            collapsedHeight: 170,
            backgroundColor: Kcolors.mainWhite,
            floating: false, // App bar doesn't float
            pinned: true, // Keeps the app bar pinned at the top
            leading: 
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: const AssetImage('assets/app_images/yassinimage.png'), // Use cached network image
                  backgroundColor: Kcolors.lightBlue,
                ),
              ),
            centerTitle: true,
            title: 
              SizedBox(
                height: 22,
                child:
                Image.asset(
                  Kimages.logoTitle,
                  fit: BoxFit.contain,
                )
              ),
            actions: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context , homenotifications);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: 
                      badges.Badge(
                        badgeContent: Text('23',
                        style: GoogleFonts.roboto(
                          color: Kcolors.mainWhite,
                          fontSize: 10,
                        )
                        ),
                        position: badges.BadgePosition.topEnd(top: 0, end: 0),
                        badgeStyle: badges.BadgeStyle(
                          padding: const EdgeInsets.all(3),
                          badgeColor: Kcolors.mainRed,
                        ),
                        child: const Icon(Icons.notifications_outlined,
                        size: 33,
                        ),
                      )
                  ),
                )
            ],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(bottom: 5),
              title: 
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        _btnlist.length, (index) {
                          final btn = _btnlist[index];
                          return 
                            // buttons
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  for (int i = 0; i < _btnlist.length; i++) {
                                    _btnlist[i].isActive = false;
                                  }
                                  _btnlist[index].isActive = true;
                                });
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.27,height: 100,
                                decoration: BoxDecoration(
                                  color: Kcolors.mainWhite,borderRadius: BorderRadius.circular(13),
                                  border: Border.all(color: btn.isActive ? Kcolors.mainRed : Kcolors.mainBlack,width: 2, )
                                ),
                                child:
                                  Padding(
                                    padding: const EdgeInsets.all(7),
                                    child:
                                      Center(
                                      child:
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            // icon
                                            SizedBox(height: 40, width: 40,child: Image.asset(btn.icon, fit: BoxFit.cover)),
                                            // title
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0),
                                              child: Text(
                                                btn.title,
                                                style: GoogleFonts.roboto(color: btn.isActive ? Kcolors.mainRed : Kcolors.mainBlack,fontSize: 20,fontWeight: FontWeight.bold,)
                                              ),
                                            )
                                          ]
                                        )
                                    )
                                  )
                              ),
                            );
                        
                        }
                      )
                    )
                ),
              centerTitle: true,
              background: 
                Stack(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        )
                      )
                    )
                  ],
                )
            ),
          ),

            //learn contents
            if (_btnlist[0].isActive) // if the first button is active
              const SliverToBoxAdapter(
                child:
                  LearningScreen()
              ),

          ]
        )
    );
  }
}



class TopBtns {
  TopBtns({
    required this.title, 
    required this.icon,
    required this.isActive,
  });
  String title;
  String icon;
  bool isActive;
}