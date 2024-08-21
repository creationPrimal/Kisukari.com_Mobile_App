

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/community/communitymainscreen.dart';
import 'package:kisukari_mobile_app/src/home/homescreen.dart';
import 'package:kisukari_mobile_app/src/mainentrypoint/widgets/log_entries.dart';
import 'package:kisukari_mobile_app/src/more_section/moremainscreen.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reportsmainscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class MainEntryPoint extends StatefulWidget {
  const MainEntryPoint({super.key});


  @override
  State<MainEntryPoint> createState() => _MainEntryPointState();
}

class _MainEntryPointState extends State<MainEntryPoint> {
  int _currentIndex = 0;
  bool _isOverlayVisible = false;

  // List of screens
  final List<Widget> _screens = [
    const HomeScreen(),
    const ReportsMainScreen(),
    const MoreScreen(),
    const CommunityScreen(),
    const MoreScreen(),
  ];

  
  
  // Function to handle tab changes to display the logEntries display

  //changing icon color
  String todayIconPath = Kicons.glucometerIcon;
  String communityIconPath = Kicons.communityBlackIcon;

  void _onTabTapped(int index) {
    // displaying the log entries
    if (index == 2) {
      setState(() {
        _isOverlayVisible = true;
      });
    } else {
      setState(() {
        _currentIndex = index;
        _isOverlayVisible = false;
      });
    }
    //changing today icon color
    if (index == 0) {
      todayIconPath = Kicons.glucometerIcon;
    } 
    //changing community icon color
    if (index == 3) {
      communityIconPath = Kicons.communityRedIcon;
    } else {
      communityIconPath = Kicons.communityBlackIcon;
    }
    if(index == 2) {
      setState(() {
        if(communityIconPath == Kicons.communityRedIcon) {
        communityIconPath = Kicons.communityRedIcon;
      }
      });
        
    }
  }

 

  // Function to hide the overlay
  void _hideOverlay() {
    setState(() {
      _isOverlayVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
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
                icon: SizedBox(
                  height: 42,
                  width: 42,
                  child: Icon(Icons.add_circle_sharp,
                  size: 42,
                  color: Kcolors.mainRed,
                  )
                  ),
                label: '',
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
          ),
        ),
        if (_isOverlayVisible)
          Positioned.fill(
            child: Opacity(
              opacity: 1,
              child: LogEntries(hideOverlay: _hideOverlay),
            ),
          ),
      ],
    );
  }
}


