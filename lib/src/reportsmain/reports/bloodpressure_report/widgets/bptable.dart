




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/bloodpressure_report/models/bptablemodel.dart';

class BpTable extends StatefulWidget {
  const BpTable({super.key});

  @override
  State<BpTable> createState() => _BpTableState();
}

class _BpTableState extends State<BpTable> {

  late List<BpTableItems> tableitemcontentsLocal;



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
       margin: const EdgeInsets.only(top: 10, bottom: 10),
       child:   
           Column(
             children: [
              // Title table row
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FixedColumnWidth(60.0),
                  2: FixedColumnWidth(110.0),
                  3: FixedColumnWidth(120),
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
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                AppLocalizations.of(context)!.reporttablepressure,
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
                                AppLocalizations.of(context)!.reporttableheartbeat,
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
                  0: FlexColumnWidth(),
                  1: FixedColumnWidth(60.0),
                  2: FixedColumnWidth(110.0),
                  3: FixedColumnWidth(120),
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
                                tableitemcontentsLocal[index].time,
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
                                    '${tableitemcontentsLocal[index].pressure}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                     tableitemcontentsLocal[index].pressure > 9.0
                                      ? const GoldArrowIndicator() // Display GoldArrowIndicator if pressure > 9.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].pressure < 5.0
                                      ? const RedArrowIndicator() // Display RedArrowIndicator if pressure < 5.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].pressure >= 5.0 && tableitemcontentsLocal[index].pressure <= 9.0
                                      ? const GreenArrowIndicator() // Display GreenArrowIndicator if pressure >= 5.0 nad <= 9.0
                                      : const SizedBox.shrink(), // Display nothing
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
                                    '${tableitemcontentsLocal[index].heartbeat}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                     tableitemcontentsLocal[index].heartbeat > 9.0
                                      ? const GoldArrowIndicator() // Display GoldArrowIndicator if heartbeat > 9.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].heartbeat < 5.0
                                      ? const RedArrowIndicator() // Display RedArrowIndicator if heartbeat < 5.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].heartbeat >= 5.0 && tableitemcontentsLocal[index].heartbeat <= 9.0
                                      ? const GreenArrowIndicator() // Display GreenArrowIndicator if heartbeat >= 5.0 nad <= 9.0
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



  



