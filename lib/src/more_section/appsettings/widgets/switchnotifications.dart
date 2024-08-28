



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SwitchNotifications extends StatefulWidget {
  const SwitchNotifications({super.key});

  @override
  State<SwitchNotifications> createState() => _SwitchNotificationsState();
}

class _SwitchNotificationsState extends State<SwitchNotifications> {

  bool btn1selected = true;
  bool btn2selected = false;

  void _switchOn() {
    setState(() {
      btn1selected = true;
      btn2selected = false;
    });
  }
  //switch off
  void _switchOff() {
    setState(() {
      btn1selected = false;
      btn2selected = true;
    });
  }





  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.transparent
      ),
      child:
        Column(
          children: [

            Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  _switchOn();
                },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                  backgroundColor: WidgetStateProperty.all(btn1selected ? Kcolors.darkBlue : Kcolors.mainWhite),
                ),
                child:
                  Center(
                    child:
                      Text(
                        AppLocalizations.of(context)!.appSettingsnotificationOn,
                        style: GoogleFonts.roboto(
                          color: btn1selected ? Kcolors.mainWhite : Kcolors.mainBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                      )
                  )
              ),
            ),

            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _switchOff();
                },
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                  backgroundColor: WidgetStateProperty.all(btn2selected ? Kcolors.darkBlue : Kcolors.mainWhite),
                ),
                child:
                  Center(
                    child:
                      Text(
                        AppLocalizations.of(context)!.appSettingsnotificationOff,
                        style: GoogleFonts.roboto(
                          color: btn2selected ? Kcolors.mainWhite : Kcolors.mainBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                      )
                  )
              ),
            )

          ]
        )
    );
  }
}