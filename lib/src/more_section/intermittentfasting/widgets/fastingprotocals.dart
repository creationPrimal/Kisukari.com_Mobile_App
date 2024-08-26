



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class FastingProtocals extends StatefulWidget {
  const FastingProtocals({super.key});

  @override
  State<FastingProtocals> createState() => _FastingProtocalsState();
}

class _FastingProtocalsState extends State<FastingProtocals> {

  late List<ProtocalBtns> btns;

  // initialize
  @override
  void didChangeDependencies() {
    btnList();
    super.didChangeDependencies();
  }

  void btnList() {
    btns = [
      ProtocalBtns(hours: "16", typerange: "16:8", btndesc: "", isActive: true, rangecolor: const Color.fromARGB(171, 113, 219, 219)),
      ProtocalBtns(hours: "12", typerange: "12:12", btndesc: "", isActive: false, rangecolor: Kcolors.mainGold.withOpacity(0.5)),
      ProtocalBtns(hours: "14", typerange: "14:10", btndesc: "", isActive: false, rangecolor: Kcolors.lightBlue),
      ProtocalBtns(hours: "18", typerange: "18:6", btndesc: "", isActive: false, rangecolor: Colors.purpleAccent.withOpacity(0.3)),
    ];
  }

  // activate btn
  void activateBtn(int index) {
    setState(() {
      for(int i = 0; i < btns.length; i++) {
        btns[i].isActive = false;   // deactivate all btns                                                                                        
      }
      btns[index].isActive = true; // activate the selected btn
    });
  }






  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
      child: 
        Column(
          children: [
            // top title
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: 
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          margin: const EdgeInsets.only(right: 10),
                          child: 
                            Image.asset(
                              Kicons.fastingColoredIcon,
                              fit: BoxFit.cover,
                            ),
                        ),
                        Text(
                          AppLocalizations.of(context)!.fastingFastingProtocals,
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 10),
                      child:
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: GoogleFonts.roboto(
                            color: Kcolors.mainBlack,
                            fontSize: 15,
                            height: 1.2,
                          )
                        )
                    )
                  ],
                )
            ),

            // buttons
            Column(
              children: 
                List.generate(
                  btns.length, (index) {
                    final btn = btns[index];
                    return 
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: Kcolors.mainWhite,
                            borderRadius: BorderRadius.circular(10), 
                            border: Border(
                              top: BorderSide(color: btn.isActive ? Kcolors.mainRed : Kcolors.lightGrey, width: 1),
                              bottom: BorderSide(color: btn.isActive ? Kcolors.mainRed : Kcolors.lightGrey, width: 1),
                              left: BorderSide(color: btn.isActive ? Kcolors.mainRed : Kcolors.lightGrey, width: 1),
                              right: BorderSide(color: btn.isActive ? Kcolors.mainRed : Kcolors.lightGrey, width: btn.isActive ? 15 : 1),
                            )
                          ),
                          child:
                            ElevatedButton(
                              onPressed: () {
                                activateBtn(index);
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Kcolors.mainWhite),
                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                                padding: const WidgetStatePropertyAll(EdgeInsets.all(0))
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8, left: 15),
                                  child: Row(
                                    children: [

                                      Container(
                                        width: 55,
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: btn.rangecolor,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child:
                                          Center(
                                            child:
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    btn.hours,
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainBlack,
                                                      fontSize: 25,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1,
                                                    )
                                                  ),
                                                  Text(
                                                    AppLocalizations.of(context)!.homeFasthours,
                                                    style: GoogleFonts.roboto(
                                                      color: Kcolors.mainBlack,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1,
                                                    )
                                                  )
                                                ]
                                              )
                                          )
                                      ),

                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.62,
                                        margin: const EdgeInsets.only(left: 15),
                                        child:
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                btn.typerange,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1,
                                                )
                                              ),
                                               Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore',
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 15,
                                                  height: 1.1,
                                                )
                                              ),
                                            ],
                                          )
                                      )
                                      
                                    ]
                                  ),
                                )
                            )
                          
                        ),
                      );
                      
                  }
                )
            ),



            // below button
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 30),
                child: GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Kcolors.mainRed,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text(AppLocalizations.of(context)!.continueNext,
                    textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Kcolors.mainWhite
                      )
                    ),
                  )
                ),
                                                  ),
              ),
                  

          ],
        ),
    );
  }
}



// fasting buttons model

class ProtocalBtns {
  ProtocalBtns({
    required this.hours,
    required this.typerange,
    required this.btndesc,
    required this.isActive,
    required this.rangecolor,
  });

  String hours;
  String typerange;
  String btndesc;
  bool isActive;
  Color rangecolor;

}