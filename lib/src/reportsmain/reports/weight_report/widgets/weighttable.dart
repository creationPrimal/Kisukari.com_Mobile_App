





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/weight_report/models/weighttablemodel.dart';

class WeightTable extends StatefulWidget {
  const WeightTable({super.key});

  @override
  State<WeightTable> createState() => _WeightTableState();
}

class _WeightTableState extends State<WeightTable> {

  late List<WeightTableItems> tableitemcontentsLocal;


  @override
  void initState() {
    tableListItems();
    super.initState();
  }

  void tableListItems() {
      tableitemcontentsLocal = tableitemcontents;
  }

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
                  0: FixedColumnWidth(100),
                  1: FixedColumnWidth(80),
                  2: FixedColumnWidth(80),
                  3: FlexColumnWidth(),
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
                                AppLocalizations.of(context)!.weight,
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
                                AppLocalizations.of(context)!.height,
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
                                'BMI',
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
                  0: FixedColumnWidth(100),
                  1: FixedColumnWidth(80),
                  2: FixedColumnWidth(80),
                  3: FlexColumnWidth(),
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
                                '${tableitemcontentsLocal[index].weight}',
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
                                '${tableitemcontentsLocal[index].height}',
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
                                    '${tableitemcontentsLocal[index].bmi}',
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainBlack,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    )
                                    ),
                                     tableitemcontentsLocal[index].bmi > 9.0
                                      ? const GoldArrowIndicator() // Display GoldArrowIndicator if reading > 9.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].bmi < 5.0
                                      ? const RedArrowIndicator() // Display RedArrowIndicator if reading < 5.0
                                      : const SizedBox.shrink(), // Display nothing
                                    tableitemcontentsLocal[index].bmi >= 5.0 && tableitemcontentsLocal[index].bmi <= 9.0
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



  



