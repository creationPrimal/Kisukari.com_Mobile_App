


import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class SelfTestSeventhScreen extends StatefulWidget {
  const SelfTestSeventhScreen({super.key});

  @override
  State<SelfTestSeventhScreen> createState() => _SelfTestSeventhScreenState();
}

class _SelfTestSeventhScreenState extends State<SelfTestSeventhScreen> {

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
    return Scaffold(
      body:
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child:
                    Image.asset(
                      Kimages.selftestImage,
                      fit: BoxFit.cover
                    )
                ),
                Positioned(
                  top: 40,
                  child:
                    //app bar
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: 
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.1,
                                 decoration: BoxDecoration(
                                  color: Kcolors.mainBlack.withOpacity(0)
                                ),
                                child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios,
                                color: Kcolors.mainBlack
                                ),
                                ),
                              ),
                            ),
                          ],
                        )
                        
                    )
                ),
                
                //body
                FadeInRight(
                  animate: true,
                  duration: const Duration(milliseconds: 300),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.65,
                      decoration: BoxDecoration(
                          color: Kcolors.mainBlue,
                          borderRadius: BorderRadius.circular(20),
                      ),
                      child:
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // title
                              Column(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.selftestScreen6affirmtitle,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainWhite,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(CupertinoIcons.info,
                                      color: Kcolors.mainBlack,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                          
                              // center
                             Column(
                              children: [
                                  Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.selftestScreen6affirmbody,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 16,
                                      )
                                    ),
                                  ),
                          
                                  //buttons
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: List.generate(
                                        _choicebtns.length, (index) {
                                          final btn = _choicebtns[index];
                                          return 
                                            Container(
                                              height: 40,
                                              margin: const EdgeInsets.only(bottom: 8),
                                              width: MediaQuery.of(context).size.width * 0.8,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: 
                                                ElevatedButton(
                                                  onPressed: () {
                                                    selectedBtn(index);
                                                  },
                                                  style: ButtonStyle(
                                                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(20)
                                                    )),
                                                    backgroundColor: WidgetStateProperty.all( btn.isActive ? Kcolors.darkBlue : Kcolors.mainWhite)
                                                  ),
                                                  child:
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          btn.title,
                                                          textAlign: TextAlign.center,
                                                          style: GoogleFonts.roboto(
                                                            color: btn.isActive ? Kcolors.mainWhite : Kcolors.darkBlue,
                                                            fontSize: 16,
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
                             ),
                          
                              
                            ]
                          ),
                        )
                        
                    ),
                  ),
                ),
                
                
                // bottom
                Positioned(
                  bottom: 60,
                  left: 0,
                  right: 0,
                  child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        child:
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // back
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
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
                                            Icon(Icons.arrow_back_ios,
                                            color: Kcolors.mainWhite,
                                            size: 18
                                            ),
                                            Text(
                                            AppLocalizations.of(context)!.selftestback,
                                            textAlign: TextAlign.start,
                                            style: GoogleFonts.roboto(
                                              color: Kcolors.mainWhite,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                            )
                                            ),
                                          ],
                                        ),
                                      ),
                                  ),
                                ),
                                
                                
                                
                                // next
                                _choicebtns[0].isActive || _choicebtns[1].isActive || _choicebtns[2].isActive || _choicebtns[3].isActive || _choicebtns[4].isActive || _choicebtns[5].isActive || _choicebtns[6].isActive ? // check if any button is selected
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, selftesteighthscreen);
                                  },
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
                                              fontSize: 17,
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
                                : // if not selected any btn then to not display the next button
                                const SizedBox.shrink(),
                              ],
                            ),
                          ),
                      ),
                    )
                )
              ]
            )
        )
        
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

