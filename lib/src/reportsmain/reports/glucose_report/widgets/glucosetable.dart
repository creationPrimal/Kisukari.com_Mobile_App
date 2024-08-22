


import 'package:flutter/material.dart';
// import 'package:kisukari_mobile_app/providers/reportduration.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/models/glucosetablemodel.dart';
// import 'package:kisukari_mobile_app/src/reportsmain/widgets/topdurationbtns.dart';
// import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GlucoseTable extends StatefulWidget {
  const GlucoseTable({super.key});

  @override
  State<GlucoseTable> createState() => _GlucoseTableState();
}

class _GlucoseTableState extends State<GlucoseTable> {

  late List<GlucoseTableItems> tableitemcontentsLocal;
  // late List<DurationList> durationlistbtns;



  @override
  void initState() {
    // _durationBtnList();
    tableListItems();
    super.initState();
  }

  void tableListItems() {
    // final isActive = Provider.of<ReportDuration>(context).isActive;

    // if (durationlistbtns[0].isActive == isActive) {
    //   tableitemcontentsLocal = tableitemcontents.take(8).toList();
    // } else if (durationlistbtns[1].isActive == isActive) {
    //   tableitemcontentsLocal = tableitemcontents.take(15).toList();
    // } else if (durationlistbtns[2].isActive == isActive) {
    //   tableitemcontentsLocal = tableitemcontents.take(31).toList();
    // } else {
      tableitemcontentsLocal = tableitemcontents.take(7).toList();
    // }
      
  }
  // void _durationBtnList() {
  //   durationlistbtns = durationlistbtns;
  // }


  @override
  Widget build(BuildContext context) {

    return Container(
       width: MediaQuery.of(context).size.width,
       margin: const EdgeInsets.only(top: 30, bottom: 10),
       child:   
           Column(
             children: [
              // Title table row
              Table(
                columnWidths: const {
                  0: FixedColumnWidth(140.0),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(140.0),
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
                                  fontSize: 17,
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
                                AppLocalizations.of(context)!.reporttabletime,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 17,
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
                                AppLocalizations.of(context)!.reporttablereading,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 17,
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
                   0: FixedColumnWidth(140.0),
                   1: FlexColumnWidth(),
                   2: FixedColumnWidth(140.0),
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
                              child: Text(
                                tableitemcontentsLocal[index].time,
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
                                    '${tableitemcontentsLocal[index].reading}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                     tableitemcontentsLocal[index].reading > 9.0
                                      ? const GoldArrowIndicator() // Display GoldArrowIndicator if reading > 9.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].reading < 5.0
                                      ? const RedArrowIndicator() // Display RedArrowIndicator if reading < 5.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].reading >= 5.0 && tableitemcontentsLocal[index].reading <= 9.0
                                      ? const GreenArrowIndicator() // Display GreenArrowIndicator if reading >= 5.0 nad <= 9.0
                                      : const SizedBox.shrink(), // Display nothing
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





//Gold Indicator arrow
class GoldArrowIndicator extends StatelessWidget {
  const GoldArrowIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        Icons.arrow_upward,
            color: Kcolors.mainGold,
            size: 15,
      ),

    );
  }
}

//Gold Indicator arrow
class GreenArrowIndicator extends StatelessWidget {
  const GreenArrowIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        Icons.arrow_forward,
            color: Kcolors.mainGreen,
            size: 15,
      ),

    );
  }
}

//Gold Indicator arrow
class RedArrowIndicator extends StatelessWidget {
  const RedArrowIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Icon(
        Icons.arrow_downward,
            color: Kcolors.mainRed,
            size: 15,
      ),

    );
  }
}



  



