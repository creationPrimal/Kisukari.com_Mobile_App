import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AutoGreetings extends StatefulWidget {
  const AutoGreetings({super.key});

  @override
  State<AutoGreetings> createState() => _AutoGreetingsState();
}

class _AutoGreetingsState extends State<AutoGreetings> {
  // Function to determine the greeting based on the current time
  String greeting = '';

  @override
  void didChangeDependencies() {
    _getGreetingMessage();
    super.didChangeDependencies();
  }

  void _getGreetingMessage() {
    var hour = DateTime.now().hour;

    if (hour >= 0 && hour < 12) {
      greeting = AppLocalizations.of(context)!.goodMorning;
    } else if (hour >= 12 && hour < 17) {
      greeting = AppLocalizations.of(context)!.goodAfternoon;
    } else {
      greeting = AppLocalizations.of(context)!.goodEvening;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$greeting, Yasini',
            textAlign: TextAlign.start,
            style: GoogleFonts.roboto(
              color: Kcolors.mainBlack,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            )
            ),
            Text(AppLocalizations.of(context)!.dontforgetreminder,
            textAlign: TextAlign.start,
            style: GoogleFonts.roboto(
              color: Kcolors.mainBlack,
              fontSize: 17,
              fontStyle: FontStyle.italic
            )
            )
          ],
        ),
    );
  }
}