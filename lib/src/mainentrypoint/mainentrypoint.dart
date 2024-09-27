

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/community/communitymainscreen.dart';
import 'package:kisukari_mobile_app/src/home/homescreen.dart';
import 'package:kisukari_mobile_app/src/learning/learningmain.dart';
import 'package:kisukari_mobile_app/src/more_section/moremainscreen.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reportsmainscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/providers/homeproviders.dart';
import 'package:provider/provider.dart';


class MainEntryPoint extends StatefulWidget {
  const MainEntryPoint({super.key});


  @override
  State<MainEntryPoint> createState() => _MainEntryPointState();
}

class _MainEntryPointState extends State<MainEntryPoint> {
  int _currentIndex = 0;
  
  // List of screens
  final List<Widget> _screens = [
    const HomeScreen(),
    const ReportsMainScreen(),
    const LearnMain(),
    const CommunityScreen(),
    const MoreScreen(),
  ];

  
  
  // Function to handle tab changes to display the logEntries display

  //changing icon color
  String todayIconPath = Kicons.glucometerIcon;
  String communityIconPath = Kicons.communityBlackIcon;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

 
  @override
  Widget build(BuildContext context) {

    final overlayProvider = Provider.of<DialogOverlayBtn>(context);

    return Scaffold(
      body: _screens[_currentIndex],
      
      bottomNavigationBar: 
      !overlayProvider.overlay ? // if overlay buttons for log entries are visible then the nav to disappear.. DO NOT REMOVE THIS ELEMENT LINE
        BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          iconSize: 20,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Kcolors.mainBlack,
          selectedItemColor: Kcolors.mainRed,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: GoogleFonts.roboto(
            fontSize: 14,
            height:1.5,
            fontWeight: FontWeight.w700,
          ),
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 20,
                child: Image.asset(
                  todayIconPath,
                )
                ),
              label: AppLocalizations.of(context)!.navbarToday,
            ),
            BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.chartLine),
              label: AppLocalizations.of(context)!.navbarReport,
            ),
            BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.arrowUpRightFromSquare),
              label: AppLocalizations.of(context)!.navbarLearn,
            ),
            BottomNavigationBarItem(
              icon:  SizedBox(
                height: 20,
                child: Image.asset(
                  communityIconPath,
                )
                ),
              label: AppLocalizations.of(context)!.navbarCommunity,
            ),
            BottomNavigationBarItem(
              icon: const FaIcon(FontAwesomeIcons.arrowUpRightFromSquare),
              label: AppLocalizations.of(context)!.navbarMore,
            ),
          ],
        )


      :  // if overlay buttons for log entries are invisible then the nav to appear.. DO NOT REMOVE THIS ELEMENT LINE


      const SizedBox.shrink()
    );
  }
}


