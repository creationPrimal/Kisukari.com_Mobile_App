


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/medicine_report/models/medicinelist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MedicineTopReadings extends StatefulWidget {
  const MedicineTopReadings({super.key});

  @override
  State<MedicineTopReadings> createState() => _MedicineTopReadingsState();
}

class _MedicineTopReadingsState extends State<MedicineTopReadings> {

  late List<MedicineList> medicinelistcontentsLocal;
  int itemsToShow = 3;
  bool showMoreBtn = true;

  @override
  void initState() {
    _initializeMedicineList();
    super.initState();
  }

  void _initializeMedicineList() {
    medicinelistcontentsLocal = medicinelistcontents;
  }
  void _showMoreItems () {
    setState((){
      itemsToShow = medicinelistcontentsLocal.length;
      showMoreBtn = false;
    });
  }
  void _showLessItems () {
    setState((){
      itemsToShow = 3;
      showMoreBtn = true;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Kcolors.lightGrey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(15),
            
          ),
          child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title
                  Text(
                    AppLocalizations.of(context)!.reportmedicinemymedicine,
                    style: GoogleFonts.roboto(
                      color: Kcolors.mainBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  //list
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: List.generate(
                        itemsToShow, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                color: index % 3 == 0 ? Kcolors.mainGold.withOpacity(0.2) : index % 2 == 0 ? Kcolors.mainGreen.withOpacity(0.2) : Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 26,
                                          height: 13,
                                          margin: const EdgeInsets.only(top: 11, left: 8, right: 10),
                                          child:
                                            Image.asset(
                                              Kicons.onepillIcon,
                                              fit: BoxFit.cover
                                            )
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              medicinelistcontents[index].name,
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              )
                                            ),
                                            Text(
                                              '${medicinelistcontents[index].qtyperday}x / ${AppLocalizations.of(context)!.reportmedicineperday}',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              )
                                            ),
                                          ]
                                        )
                                      ]
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20.0),
                                      child: Text(
                                        '${medicinelistcontents[index].weeklytotal}/ ${AppLocalizations.of(context)!.reportmedicineperweek}',
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainBlack,
                                          fontSize: 17,
                                          height: 1,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ),
                                    ),
                                  ]
                                )
                            ),
                          );
                        }
                      ),
                    ),
                  )
                ]
              ),
            ),
        ),

        // vew more btn
        if (medicinelistcontentsLocal.length > 3) //if the list has more than 3 items
          showMoreBtn ? // display all items
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Kcolors.darkBlue,
                borderRadius: BorderRadius.circular(30)
              ),
              child: 
                TextButton(
                  onPressed: () {
                    _showMoreItems();
                  },
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12))
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.reportmedicineviewmore,
                    style: GoogleFonts.roboto(
                      color: Kcolors.mainWhite,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  
                )
            )

            : // display only 3

            Container(
            height: 30,
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Kcolors.darkBlue,
              borderRadius: BorderRadius.circular(30)
            ),
            child: 
              TextButton(
                onPressed: () {
                  _showLessItems ();
                },
                style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.only(top: 4, bottom: 4, left: 12, right: 12))
                ),
                child: Text(
                  AppLocalizations.of(context)!.reportmedicineviewless,
                  style: GoogleFonts.roboto(
                    color: Kcolors.mainWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )
                ),
                
              )
          )


      ],
    );
  }
}