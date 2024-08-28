


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileGenderPicker extends StatefulWidget {
  const ProfileGenderPicker({super.key});

  @override
  State<ProfileGenderPicker> createState() => _ProfileGenderPickerState();
}

class _ProfileGenderPickerState extends State<ProfileGenderPicker> {

  // gender picker
  Color _maleispicked = Kcolors.lightGrey;
  Color _maleispickedtitle = Kcolors.darkBlue;
  Color _femaleispicked = Kcolors.lightGrey;
  Color _femaleispickedtitle = Kcolors.darkBlue;

  void _malebuttonColor() {
    setState(() {
      _maleispicked = _maleispicked == Kcolors.lightGrey ? Kcolors.darkBlue : Kcolors.lightGrey;
      _maleispickedtitle = _maleispickedtitle == Kcolors.darkBlue ?  Kcolors.mainWhite : Kcolors.darkBlue;
      _femaleispicked == Kcolors.darkBlue ? _femaleispicked = Kcolors.lightGrey : _maleispicked = Kcolors.darkBlue;
      _femaleispickedtitle == Kcolors.mainWhite ? _femaleispickedtitle = Kcolors.darkBlue : _maleispickedtitle = Kcolors.mainWhite;
      
    });
  }
  void _femalebuttonColor() {
    setState(() {
      _femaleispicked = _femaleispicked == Kcolors.lightGrey ? Kcolors.darkBlue : Kcolors.lightGrey;
      _femaleispickedtitle = _femaleispickedtitle == Kcolors.darkBlue ?  Kcolors.mainWhite : Kcolors.darkBlue;
      _maleispicked == Kcolors.darkBlue ? _maleispicked = Kcolors.lightGrey : _femaleispicked = Kcolors.darkBlue;
      _maleispickedtitle == Kcolors.mainWhite ? _maleispickedtitle = Kcolors.darkBlue : _femaleispickedtitle = Kcolors.mainWhite;
      
    });
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, top:5, right: 15, bottom: 15),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: 
        Column(
          children: [
            // Container(
            //   height: 6,
            //   width: 100,
            //   margin: const EdgeInsets.only(bottom: 15),
            //   decoration: BoxDecoration(
            //     color: Kcolors.lightGrey,
            //     borderRadius: BorderRadius.circular(20)
            //   )
            // ),

            //buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: Kcolors.lightGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                  ElevatedButton(
                    
                    onPressed: () {
                        _malebuttonColor();
                        
                    },
                    style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                    backgroundColor: WidgetStateProperty.all(_maleispicked),
                  ),
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                  
                        Image.asset(Kicons.malecoloredIcon,
                        fit: BoxFit.contain,
                        ),
                  
                        Text(AppLocalizations.of(context)!.male,
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: _maleispickedtitle
                        )
                        )
                  
                      ]
                    )
                  )
                ),
                  Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: Kcolors.lightGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:
                    ElevatedButton(
                      
                      onPressed: () {
                          _femalebuttonColor();
                      },
                      style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                      backgroundColor: WidgetStateProperty.all(_femaleispicked),
                    ),
                      child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    
                          Image.asset(Kicons.femalecoloredIcon,
                          fit: BoxFit.contain,
                          ),
                    
                          Text(AppLocalizations.of(context)!.female,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: _femaleispickedtitle
                          )
                          )
                    
                        ]
                      )
                    )
                )
              ]
            ),

          ],
        ),
    );
  }
}