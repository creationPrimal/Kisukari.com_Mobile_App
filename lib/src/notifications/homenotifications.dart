



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeNotifications extends StatefulWidget {
  const HomeNotifications({super.key});

  @override
  State<HomeNotifications> createState() => _HomeNotificationsState();
}

class _HomeNotificationsState extends State<HomeNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
      backgroundColor: Kcolors.mainWhite,
      elevation: 0.0,
      scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
        title: 
          Text(
            AppLocalizations.of(context)!.homenotifications,
            style: GoogleFonts.roboto(
              color: Kcolors.mainRed,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )
          ),
      )
    );
  }
}