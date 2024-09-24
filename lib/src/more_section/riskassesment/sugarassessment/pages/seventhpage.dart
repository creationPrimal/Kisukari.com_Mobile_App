



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SugarSeventhPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const SugarSeventhPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<SugarSeventhPage> createState() => _SugarSeventhPageState();
}

class _SugarSeventhPageState extends State<SugarSeventhPage> {

  late List<ChoiceButtons> _choicebtns; 

  //initialize
  @override
  void didChangeDependencies() {
     _initializeBtns();
    super.didChangeDependencies();
  }
  //buttons model list
  void _initializeBtns() {
    _choicebtns = [
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice1, value: "choice_1", isActive: false),
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice2, value: "choice_2", isActive: false),
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice3, value: "choice_3", isActive: false),
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice4, value: "choice_4", isActive: false),
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice5, value: "choice_5", isActive: false),
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice6, value: "choice_6", isActive: false),
      ChoiceButtons(title: AppLocalizations.of(context)!.selftestScreen6choice7, value: "choice_7", isActive: false),
    ];
  }
  // activate btn
  void selectedBtn(int index) {
    setState(() {
      for(int i = 0; i < _choicebtns.length; i++ ) {
        _choicebtns[i].isActive = false;
      }
      _choicebtns[index].isActive = true;
    });
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
                  color: Kcolors.mainBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          const SizedBox(height:20), // space
                          // title
                          Text(
                            AppLocalizations.of(context)!.selftestScreen6affirmtitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          // info icon
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.info,
                              color: Kcolors.mainWhite,
                              size: 30,
                            ),
                          ),
                          const SizedBox(height:20), // space
                          // title body
                          Text(
                            AppLocalizations.of(context)!.selftestScreen6affirmbody,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          const SizedBox(height:10), // space
                          
      
                          // choices
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                            //buttons
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                _choicebtns.length, (index) {
                                  final btn = _choicebtns[index];
                                  return 
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 12),
                                      width: MediaQuery.of(context).size.width * 0.9,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: 
                                        ElevatedButton(
                                          onPressed: () {
                                            selectedBtn(index);
                                          },
                                          style: ButtonStyle(
                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)
                                            )),
                                            padding:  WidgetStateProperty.all(const EdgeInsets.only(top: 8, bottom:8)),
                                            backgroundColor: WidgetStateProperty.all( btn.isActive ? Kcolors.mainRed : Kcolors.mainWhite)
                                          ),
                                          child:
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  btn.title,
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    color: btn.isActive ? Kcolors.mainWhite : Kcolors.mainBlack,
                                                    fontSize: 20,
                                                    height: 1.2,
                                                    fontWeight: FontWeight.w600,
                                                  )
                                                )
                                              ]
                                            )
                                        )
                                    );
                                }
                              )
                            ),
                          
                          ),
                         
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
                                color: Kcolors.mainBlue,
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
                          if (  _choicebtns[0].isActive || _choicebtns[1].isActive || _choicebtns[2].isActive || _choicebtns[3].isActive || _choicebtns[4].isActive || _choicebtns[5].isActive || _choicebtns[6].isActive ) // check if all qstns are is selected
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


// btns model
class ChoiceButtons {
  ChoiceButtons({
    required this.title,
    required this.value,
    required this.isActive,
  });
  String title;
  String value;
  bool isActive;
}

