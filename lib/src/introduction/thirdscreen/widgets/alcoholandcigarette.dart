

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/introduction/thirdscreen/widgets/alcoholdropdown.dart';
import 'package:kisukari_mobile_app/src/introduction/thirdscreen/widgets/alcoholqtydropdown.dart';
import 'package:kisukari_mobile_app/src/introduction/thirdscreen/widgets/cigarettedropdown.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Alcoholandcigarette extends StatefulWidget {
  const Alcoholandcigarette({super.key});

  @override
  State<Alcoholandcigarette> createState() => _AlcoholandcigaretteState();
}

class _AlcoholandcigaretteState extends State<Alcoholandcigarette> {


  // yes or no
  Color _yesBtn = Kcolors.lightBlue;
  bool _yesisChecked = false;  
  Color _noBtn = Kcolors.lightBlue;
  Color _yesBtnTitle = Kcolors.darkBlue;
  Color _noBtnTitle = Kcolors.darkBlue;

  void _yesbtnColorChange() {
    setState(() {
      _yesisChecked = true;

      _yesBtn = Kcolors.darkBlue;
      _yesBtnTitle = Kcolors.mainWhite;

      _noBtn = Kcolors.lightBlue;
      _noBtnTitle = Kcolors.darkBlue;
    });
  }

  void _nobtnColorChange() {
    setState(() {
      _yesisChecked = false;

      _noBtn = Kcolors.darkBlue;
      _noBtnTitle = Kcolors.mainWhite;

      _yesBtn = Kcolors.lightBlue;
      _yesBtnTitle = Kcolors.darkBlue;
    });
  }

  // alcohol and cigarette picker
  Color _cigaretteispicked = Kcolors.lightGrey;
  Color _cigaretteispickedtitle = Kcolors.mainBlack;
  Color _alcoholispicked = Kcolors.lightGrey;
  Color _alcoholispickedtitle = Kcolors.mainBlack;

  void _cigarettebuttonColor() {
    setState(() {
      _cigaretteispicked = _cigaretteispicked == Kcolors.lightGrey ? Kcolors.darkBlue : Kcolors.lightGrey;
      _cigaretteispickedtitle = _cigaretteispickedtitle == Kcolors.mainBlack ?  Kcolors.mainWhite : Kcolors.mainBlack;
      _alcoholispicked == Kcolors.darkBlue ? _alcoholispicked = Kcolors.lightGrey : _cigaretteispicked = Kcolors.darkBlue;
      _alcoholispickedtitle == Kcolors.mainWhite ? _alcoholispickedtitle = Kcolors.mainBlack : _cigaretteispickedtitle = Kcolors.mainWhite;
      
    });
  }
  void _alcoholbuttonColor() {
    setState(() {
      _alcoholispicked = _alcoholispicked == Kcolors.lightGrey ? Kcolors.darkBlue : Kcolors.lightGrey;
      _alcoholispickedtitle = _alcoholispickedtitle == Kcolors.mainBlack ?  Kcolors.mainWhite : Kcolors.mainBlack;
      _cigaretteispicked == Kcolors.darkBlue ? _cigaretteispicked = Kcolors.lightGrey : _alcoholispicked = Kcolors.darkBlue;
      _cigaretteispickedtitle == Kcolors.mainWhite ? _cigaretteispickedtitle = Kcolors.mainBlack : _alcoholispickedtitle = Kcolors.mainWhite;
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 10),
      child: 
      Column(
        children: [

           SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              AppLocalizations.of(context)!.introsubstancestitle,
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                fontSize: 22,
                height: 1.2,
                color: Kcolors.mainBlack,
                fontWeight: FontWeight.bold,
              )
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 15),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    onPressed: () {
                      _yesbtnColorChange ();
                    },
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                      backgroundColor: WidgetStateProperty.all(_yesBtn),
                    ), 
                    child: 
                    Center(
                      child:
                      Text(AppLocalizations.of(context)!.yes,
                      style: GoogleFonts.roboto(
                        color: _yesBtnTitle,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                      )
                    )
                    ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    onPressed: () {
                      _nobtnColorChange ();
                    },
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                      backgroundColor: WidgetStateProperty.all(_noBtn),
                    ), 
                    child: 
                    Center(
                      child:
                      Text(AppLocalizations.of(context)!.no,
                      style: GoogleFonts.roboto(
                        color: _noBtnTitle,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                      )
                    )
                    ),
                )
              ],
            )
          ),

          if (_yesisChecked)
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      AppLocalizations.of(context)!.substancesselecttitle,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        height: 1.2,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width,
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child:
                          ElevatedButton(
                            onPressed: () {
                              _cigarettebuttonColor();
                            },
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              backgroundColor: WidgetStateProperty.all(_cigaretteispicked)
                            ),
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 90,
                                  child: 
                                  Image.asset(
                                    Kicons.cigaretteIconIntro
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(AppLocalizations.of(context)!.substanceschoiceone,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    height: 1.2,
                                    fontWeight: FontWeight.w500,
                                    color: _cigaretteispickedtitle
                                  )
                                  ),
                                )
                              ],
                            )
                          )
                        ),

                         SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child:
                          ElevatedButton(
                            onPressed: () {
                              _alcoholbuttonColor();
                            },
                            style: ButtonStyle(
                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              )),
                              backgroundColor: WidgetStateProperty.all(_alcoholispicked)
                            ),
                            child:
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 90,
                                  child: 
                                  Image.asset(
                                    Kicons.alcoholIconIntro
                                  )
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(AppLocalizations.of(context)!.substanceschoicetwo,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 19,
                                    height: 1.2,
                                    fontWeight: FontWeight.w500,
                                    color: _alcoholispickedtitle
                                  )
                                  ),
                                )
                              ],
                            )
                          )
                        ),

                      ]
                    )
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 0),
                    width: MediaQuery.of(context).size.width,
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(AppLocalizations.of(context)!.cigarateschoicestitle,
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  height: 1.2,
                                  fontWeight: FontWeight.w700,
                                  color: Kcolors.mainBlack,
                                )
                                ),

                                Container(
                                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightBlue,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: 
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                    
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Text(AppLocalizations.of(context)!.cigarateschoicessubtitle,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Kcolors.mainBlack
                                          )
                                          ),
                                        ),
                                    
                                         Container(
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Kcolors.mainWhite,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: const Cigarettedropdown(),
                                        ),
                                        
                                    
                                      ]
                                    ),
                                  )
                                )

                              ],
                            )
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            
                                Text(AppLocalizations.of(context)!.alcoholchoicetitle,
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  height: 1.2,
                                  fontWeight: FontWeight.w700,
                                  color: Kcolors.mainBlack,
                                )
                                ),
                            
                                Container(
                                  margin: const EdgeInsets.only(top: 15, bottom: 15),
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightBlue,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: 
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                    
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Text(AppLocalizations.of(context)!.type,
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Kcolors.mainBlack
                                              )
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 8.0),
                                              child: Text(AppLocalizations.of(context)!.quantityperweek,
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.roboto(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Kcolors.mainBlack
                                              )
                                              ),
                                            ),

                                          ],
                                        ),
                                    
                                         Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                             Container(
                                              height: 50,
                                              width: MediaQuery.of(context).size.width * 0.19,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: const Alcoholdropdown(),
                                              ),

                                              Container(
                                              height: 50,
                                              width: MediaQuery.of(context).size.width * 0.19,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: const AlcoholQtydropdown(),
                                              ),

                                           ],
                                         ),
                                        
                                    
                                      ]
                                    ),
                                  )
                                )
                            
                              ],
                            )
                        )


                      ]
                    )
                  )


                ]
              )
            )
          

        ]
      ),
    );
  }
}