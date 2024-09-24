



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MentalSixthPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const MentalSixthPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<MentalSixthPage> createState() => _MentalSixthPageState();
}

class _MentalSixthPageState extends State<MentalSixthPage> {

  late List<Choices> _choices; // qstn 1
  void _initQstn1() {
    _choices = [
      Choices(title: AppLocalizations.of(context)!.mentalqstn1choice1,  isActive: false),
      Choices(title: AppLocalizations.of(context)!.mentalqstn1choice2,  isActive: false),
      Choices(title: AppLocalizations.of(context)!.mentalqstn1choice3,  isActive: false),
      Choices(title: AppLocalizations.of(context)!.mentalqstn1choice4,  isActive: false),
      Choices(title: AppLocalizations.of(context)!.mentalqstn1choice5,  isActive: false),
      Choices(title: AppLocalizations.of(context)!.mentalqstn1choice6,  isActive: false),
    ];
  }
  // initialize the questions
  @override
  void didChangeDependencies(){
    _initQstn1();
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
                  color: Kcolors.mainGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          const SizedBox(height:10), // space
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
                                      AppLocalizations.of(context)!.mentalqstn5,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 25,
                                        height: 1.3,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),
                                  // buttons
                                  Column(
                                    children: List.generate(
                                      _choices.length, (index) {
                                        final qstn1 = _choices[index];
                                        return Container(
                                          width: width,
                                          margin: const EdgeInsets.only(bottom: 10),
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _choices.length; i++) {
                                                    _choices[i].isActive = false;
                                                  }
                                                  _choices[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                )),
                                                padding: WidgetStateProperty.all(const EdgeInsets.only(left:15, right: 15, top: 10, bottom: 10)),
                                                backgroundColor: WidgetStateProperty.all(qstn1.isActive? Kcolors.mainRed : Kcolors.mainWhite)
                                              ),
                                              child:
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: Text(
                                                      qstn1.title,
                                                      textAlign: TextAlign.start,
                                                      style: GoogleFonts.roboto(
                                                        color: qstn1.isActive? Kcolors.mainWhite : Kcolors.mainBlack, fontSize: 22, height: 1.2, fontWeight: FontWeight.w700,
                                                      )
                                                    ),
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                ]
                              )
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
                                color: Kcolors.mainGreen,
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
                          if (_choices[0].isActive || _choices[1].isActive || _choices[2].isActive || _choices[3].isActive || _choices[4].isActive || _choices[5].isActive ) // check if all qstns are is selected
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
class Choices {
  Choices({
    required this.title,
    required this.isActive,
  });
  String title;
  bool isActive;
}
