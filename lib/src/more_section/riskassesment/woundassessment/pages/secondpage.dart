



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WoundsSecondPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const WoundsSecondPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<WoundsSecondPage> createState() => _WoundsSecondPageState();
}

class _WoundsSecondPageState extends State<WoundsSecondPage> {

  late List<FirstQstn> _firstqstn; // qstn 1
  void _initQstn1() {
    _firstqstn = [
      FirstQstn(title: AppLocalizations.of(context)!.yes, icon: Kicons.kukatwamiguuNdio, isActive: false),
      FirstQstn(title: AppLocalizations.of(context)!.no, icon: Kicons.kukatwamiguuhapana, isActive: false),
    ];
  }
  late List<SecondQstn> _secondqstn; // qstn 2
  void _initQstn2() {
    _secondqstn = [
      SecondQstn(title: AppLocalizations.of(context)!.yes, icon: Kicons.vidondaNdio, isActive: false),
      SecondQstn(title: AppLocalizations.of(context)!.no, icon: Kicons.vidondahapana, isActive: false),
    ];
  }
  late List<ThirdQstn> _thirdqstn; // qstn 3
  void _initQstn3() {
    _thirdqstn = [
      ThirdQstn(title: AppLocalizations.of(context)!.yes, icon: Kicons.ugonjwafigoNdio, isActive: false),
      ThirdQstn(title: AppLocalizations.of(context)!.no, icon: Kicons.ugonjwafigohapana, isActive: false),
    ];
  }
  // initialize the questions
  @override
  void didChangeDependencies(){
    _initQstn1();
    _initQstn2();
    _initQstn3();
    super.didChangeDependencies();
  }




  @override
  Widget build(BuildContext context) {

    final width = ScreenSize.screenWidth(context);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical, 
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 35),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // body
              Container(
                decoration: BoxDecoration(
                  color: Kcolors.woundsSkinColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          // title
                          Text(
                            AppLocalizations.of(context)!.woundtesthistoryTitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(height:20), // space
                          // title body
                          Text(
                            AppLocalizations.of(context)!.woundtesthistoryTitlebody,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          const SizedBox(height:10), // space
                          // title body
                          Text(
                            AppLocalizations.of(context)!.woundtesthistorysubTitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.3,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          // Questions
      
      
                          // qstn 1
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.woundtesthistoryqstn1,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      _firstqstn.length, (index) {
                                        final qstn1 = _firstqstn[index];
                                        return SizedBox(
                                          height: 140,
                                          width: width * 0.42,
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _firstqstn.length; i++) {
                                                    _firstqstn[i].isActive = false;
                                                  }
                                                  _firstqstn[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite)
                                              ),
                                              child:
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    // image
                                                    SizedBox(
                                                      height: 60, width: 60,
                                                      child: Image.asset(qstn1.icon, fit: BoxFit.cover)
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Text(
                                                        qstn1.title,
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.roboto(
                                                          color: qstn1.isActive? Kcolors.mainRed : Kcolors.mainBlack, fontSize: 40, height: 1.2, fontWeight: FontWeight.w700,
                                                        )
                                                      ),
                                                    )
                                                  ]
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                ]
                              )
                          ),
                          // qstn 2
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.woundtesthistoryqstn2,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      _secondqstn.length, (index) {
                                        final qstn2 = _secondqstn[index];
                                        return SizedBox(
                                          height: 140,
                                          width: width * 0.42,
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _secondqstn.length; i++) {
                                                    _secondqstn[i].isActive = false;
                                                  }
                                                  _secondqstn[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite)
                                              ),
                                              child:
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    // image
                                                    SizedBox(
                                                      height: 60, width: 60,
                                                      child: Image.asset(qstn2.icon, fit: BoxFit.cover)
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Text(
                                                        qstn2.title,
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.roboto(
                                                          color: qstn2.isActive? Kcolors.mainRed : Kcolors.mainBlack, fontSize: 40, height: 1.2, fontWeight: FontWeight.w700,
                                                        )
                                                      ),
                                                    )
                                                  ]
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                ]
                              )
                          ),
                          // qstn 3
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.woundtesthistoryqstn3,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      _thirdqstn.length, (index) {
                                        final qstn3 = _thirdqstn[index];
                                        return SizedBox(
                                          height: 140,
                                          width: width * 0.42,
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _thirdqstn.length; i++) {
                                                    _thirdqstn[i].isActive = false;
                                                  }
                                                  _thirdqstn[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(Kcolors.mainWhite)
                                              ),
                                              child:
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    // image
                                                    SizedBox(
                                                      height: 60, width: 60,
                                                      child: Image.asset(qstn3.icon, fit: BoxFit.cover)
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Text(
                                                        qstn3.title,
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.roboto(
                                                          color: qstn3.isActive? Kcolors.mainRed : Kcolors.mainBlack, fontSize: 40, height: 1.2, fontWeight: FontWeight.w700,
                                                        )
                                                      ),
                                                    )
                                                  ]
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                ]
                              )
                          )
                        ]
                      )
                  )
              ),

              // below buttons
               Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  child:
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // back
                          GestureDetector(
                            onTap: widget.previousPage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Kcolors.woundsSkinColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_back_ios,
                                      color: Kcolors.mainWhite,
                                      size: 18
                                      ),
                                      Text(
                                      AppLocalizations.of(context)!.selftestback,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      )
                                                                    ),
                                    ],
                                  ),
                                ),
                            ),
                          ),
                          
                          
                          
                          // next
                          if ((_firstqstn[0].isActive || _firstqstn[1].isActive) && (_secondqstn[0].isActive || _secondqstn[1].isActive) && (_thirdqstn[0].isActive || _thirdqstn[1].isActive)) // check if all qstns are is selected
                            GestureDetector(
                              onTap:  widget.nextPage,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Kcolors.mainRed,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child:
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                        AppLocalizations.of(context)!.selftestforward,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        )
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                        color: Kcolors.mainWhite,
                                        size: 18
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                            )
                        ],
                      ),
                    ),
                ),
              )
            ]
          )
      ),
    );
  }
}


// first qstn
class FirstQstn {
  FirstQstn({
    required this.title,
    required this.icon,
    required this.isActive,
  });
  String title;
  String icon;
  bool isActive;
}

// second qstn
class SecondQstn {
  SecondQstn({
    required this.title,
    required this.icon,
    required this.isActive,
  });
  String title;
  String icon;
  bool isActive;
}

// third qstn
class ThirdQstn {
  ThirdQstn({
    required this.title,
    required this.icon,
    required this.isActive,
  });
  String title;
  String icon;
  bool isActive;
}