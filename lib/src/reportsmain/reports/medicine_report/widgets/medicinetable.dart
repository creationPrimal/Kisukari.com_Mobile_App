


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/medicine_report/models/medicinetablemodel.dart';

class MedicineTable extends StatefulWidget {
  const MedicineTable({super.key});

  @override
  State<MedicineTable> createState() => _MedicineTableState();
}

class _MedicineTableState extends State<MedicineTable> {

  late List<MedicineTableItems> tableitemcontentsLocal;



  @override
  void initState() {
    tableListItems();
    super.initState();
  }

  void tableListItems() {
      tableitemcontentsLocal = tableitemcontents.take(7).toList();
      
  }

  @override
  Widget build(BuildContext context) {

    return Container(
       width: MediaQuery.of(context).size.width,
       margin: const EdgeInsets.only(top: 25, bottom: 10),
       child:   
           Column(
             children: [
              // Title table row
              Table(
                columnWidths: const {
                  0: FixedColumnWidth(80),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(80),
                }, 
                children: [
                   TableRow(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Kcolors.lightBlue,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 5, top: 10),
                              child: Text(
                                AppLocalizations.of(context)!.reporttabletime,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Kcolors.lightBlue,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 5, top: 10),
                              child: Text(
                                AppLocalizations.of(context)!.reportmedicineMedicinetype,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Kcolors.lightBlue,
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 5, top: 10),
                              child: Text(
                                AppLocalizations.of(context)!.reportmedicineQty,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                            ),
                          ),
                        ),
                        
                        
                      ],
                  )
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              // Table Rows
              Table(
                //  border: TableBorder.all(),
                 columnWidths: const {
                  0: FixedColumnWidth(80),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(80),
                 }, 
                 children: List.generate(
                  tableitemcontentsLocal.length, (index) {
                    
                    return 
                      TableRow(
                      children: [
                        Column(
                          children: [
                            //date 
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 5, top: 10),
                                  child: Text(
                                    tableitemcontentsLocal[index].date,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.darkBlue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    )
                                    ),
                                ),
                              ),
                            ),
                            // time 1
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    tableitemcontentsLocal[index].time1,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),

                            // time 2
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    tableitemcontentsLocal[index].time2,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                            // time 3
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    tableitemcontentsLocal[index].time3,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            //blank space
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 5, top: 10),
                                  child: Text(
                                    '',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                            // name 1
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    tableitemcontentsLocal[index].name1,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),

                            // name 2
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    tableitemcontentsLocal[index].name2,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                            // name 3
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    tableitemcontentsLocal[index].name3,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            //blank space
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 5, top: 10),
                                  child: Text(
                                    '',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                            // qty 1
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    '${tableitemcontentsLocal[index].qty1}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),

                            // qty 2
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    '${tableitemcontentsLocal[index].qty2}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                            // qty 3
                            Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightGrey.withOpacity(0.7),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0, right: 5, top:2, bottom: 2),
                                  child: Text(
                                    '${tableitemcontentsLocal[index].qty3}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        
                        
                      ],
                   );
                  }
                 ),
               ),
             ],
           ),
    );
  }
}





