





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:badges/badges.dart' as badges;
import 'package:kisukari_mobile_app/src/home/widgets/autogreetings.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homeclinic.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homefasting.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homeremindertabs.dart';
import 'package:kisukari_mobile_app/src/home/widgets/homereportgraphs.dart';
import 'package:kisukari_mobile_app/src/home/widgets/medicationreadings.dart';
import 'package:kisukari_mobile_app/src/home/widgets/scrollcalender.dart';
import 'package:kisukari_mobile_app/src/home/widgets/sugartopreadings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                CircleAvatar(
                  radius: 20,
                  backgroundImage: const NetworkImage('https://i.pinimg.com/564x/ae/72/61/ae7261114527edf8911671b8ab675c74.jpg'),
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

                SizedBox(
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
                )
              ]
            )
          )
      ),
      body: 
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
        )
    );
  }
}