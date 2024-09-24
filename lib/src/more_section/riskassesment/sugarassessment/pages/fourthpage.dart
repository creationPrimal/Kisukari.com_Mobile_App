



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SugarFourthPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const SugarFourthPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<SugarFourthPage> createState() => _SugarFourthPageState();
}

class _SugarFourthPageState extends State<SugarFourthPage> {

  late List<AfirmButtons> _affirmbtns; // yes or no btns

  //initialize
  @override
  void didChangeDependencies() {
     _initializeBtns();
    super.didChangeDependencies();
  }
  //buttons model list
  void _initializeBtns() {
    _affirmbtns = [
      AfirmButtons(title: AppLocalizations.of(context)!.yes, value: "yes", isActive: false),
      AfirmButtons(title: AppLocalizations.of(context)!.no, value: "no", isActive: false),
    ];
  }
  // activate btn
  void selectedBtn(int index) {
    setState(() {
      for(int i = 0; i < _affirmbtns.length; i++ ) {
        _affirmbtns[i].isActive = false;
      }
      _affirmbtns[index].isActive = true;
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
                            AppLocalizations.of(context)!.selftestScreen3affirmtitle,
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
                            AppLocalizations.of(context)!.selftestScreen3affirmbody,
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
                            margin: const EdgeInsets.only(top: 10, bottom: 50),
                            child:
                            //buttons
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  _affirmbtns.length, (index) {
                                    final btn = _affirmbtns[index];
                                    return 
                                      Container(
                                    height: 120,
                                    width: MediaQuery.of(context).size.width * 0.42,
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainWhite,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: 
                                      ElevatedButton(
                                        onPressed: () {
                                          selectedBtn(index);
                                        },
                                        style: ButtonStyle(
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                          )),
                                          backgroundColor: WidgetStateProperty.all( btn.isActive ? Kcolors.mainRed : Kcolors.mainWhite)
                                        ),
                                        child:
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                btn.title,
                                                style: GoogleFonts.roboto(
                                                  color: btn.isActive ? Kcolors.mainWhite : Kcolors.mainBlack,
                                                  fontSize: 35,
                                                  height: 1,
                                                  fontWeight: FontWeight.w700,
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
                          if ( _affirmbtns[0].isActive || _affirmbtns[1].isActive ) // check if all qstns are is selected
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
class AfirmButtons {
  AfirmButtons({
    required this.title,
    required this.value,
    required this.isActive,
  });
  String title;
  String value;
  bool isActive;
}

