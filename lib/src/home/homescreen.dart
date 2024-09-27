





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:badges/badges.dart' as badges;
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/providers/homeproviders.dart';
import 'package:kisukari_mobile_app/src/home/widgets/autogreetings.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homeclinic.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homefasting.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homeremindertabs.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homereportgraphs.dart';
import 'package:kisukari_mobile_app/src/home/widgets/hometopbuttons.dart';
import 'package:kisukari_mobile_app/src/home/widgets/medicationreadings.dart';
import 'package:kisukari_mobile_app/src/home/widgets/scrollcalender.dart';
import 'package:kisukari_mobile_app/src/home/widgets/sugartopreadings.dart';
import 'package:kisukari_mobile_app/src/home/widgets/log_entries.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {

    final overlayProvider = Provider.of<DialogOverlayBtn>(context);

    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: 
      !overlayProvider.overlay ? // if dialog buttons overlay is not visible 
      AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        title: 
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: const AssetImage('assets/app_images/yassinimage.png'), // Use cached network image
                  backgroundColor: Kcolors.lightBlue,
                ),
                 
                SizedBox(
                  height: 22,
                  child:
                  Image.asset(
                    Kimages.logoTitle,
                    fit: BoxFit.contain,
                  )
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context , homenotifications);
                  },
                  child: SizedBox(
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
              ]
            )
          )
      )
      :
      null,
      body: 
        Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                margin: const EdgeInsets.all(15),
                child: const Column(
                  children: [
            
                    // scroll calender
                    ScrollCalender(),
            
                    //auto greetings
                    AutoGreetings(),
            
                    // top buttons, consultation, doctors recom and risk assessment
                    HomeTopButtons(),
            
                    // top main readings
                    Sugartopreadings(),
            
                    //medication readings (pills , insulin, excercise and more)
                    HomeMedicationReadings(),
            
                    //reminder tabs
                    HomeReminderTabs(),
            
                    //TODO: Add pop up notifications here
            
                    //weekly report graphs
                    HomeReportGraphs(),
            
                    // clinic days counter
                    HomeClinicCounter(),
            
                    //intermittent fasting
                    HomeFasting(),
                  ]
                )
              )
            ),
            // dialog display button
            Positioned(
              bottom: 20,
              right: 15,
              child:
                GestureDetector(
                  onTap: () {
                    overlayProvider.showOverlay();
                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Kcolors.mainWhite,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: Icon(Icons.add_circle_sharp,
                    size: 48,
                    color: Kcolors.mainRed,
                    ),
                  )
                  ),
                ),
            ),
            // overlay
            if (overlayProvider.overlay) // if it is active to display
              const Positioned.fill(
                child: Opacity(
                  opacity: 1,
                  child: LogEntries(),
                ),
              ),
          ],
        )
    );
  }
}