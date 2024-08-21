









import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/excercise_report/models/excercisetablemodel.dart';

class ExcerciseTable extends StatefulWidget {
  const ExcerciseTable({super.key});

  @override
  State<ExcerciseTable> createState() => _ExcerciseTableState();
}

class _ExcerciseTableState extends State<ExcerciseTable> {

  late List<ExcerciseTableItems> tableitemcontentsLocal;



  @override
  void didChangeDependencies() {
    tableListItems();
    super.didChangeDependencies();
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
                  0: FixedColumnWidth(95.0),
                  1: FixedColumnWidth(65.0),
                  2: FlexColumnWidth(),
                  3: FixedColumnWidth(75.0),
                  4: FixedColumnWidth(70),
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
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                AppLocalizations.of(context)!.reporttabledate,
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
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                AppLocalizations.of(context)!.reportexcercisesteps,
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
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                AppLocalizations.of(context)!.reportExcercise,
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
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                AppLocalizations.of(context)!.reportexcercisetimedk,
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
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                AppLocalizations.of(context)!.reportexcercisecalorie,
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
                  0: FixedColumnWidth(95.0),
                  1: FixedColumnWidth(65.0),
                  2: FlexColumnWidth(),
                  3: FixedColumnWidth(75.0),
                  4: FixedColumnWidth(70),
                 }, 
                 children: List.generate(
                  tableitemcontentsLocal.length, (index) {
                    
                    return 
                      TableRow(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: index % 2 == 0 ?  Kcolors.lightGrey : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                tableitemcontentsLocal[index].date,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                )
                                ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: index % 2 == 0 ?  Kcolors.lightGrey : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '${tableitemcontentsLocal[index].steps}',
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                )
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: index % 2 == 0 ?  Kcolors.lightGrey : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                tableitemcontentsLocal[index].excercise,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                )
                                ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: index % 2 == 0 ?  Kcolors.lightGrey : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${tableitemcontentsLocal[index].time}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: index % 2 == 0 ?  Kcolors.lightGrey : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${tableitemcontentsLocal[index].calorie}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                ],
                              ),
                            ),
                          ),
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





  



