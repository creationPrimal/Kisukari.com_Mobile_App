












import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/food_report/models/fooditemsmodel.dart';

class FoodTable extends StatefulWidget {
  const FoodTable({super.key});

  @override
  State<FoodTable> createState() => _FoodTableState();
}

class _FoodTableState extends State<FoodTable> {

  late List<FoodTableItems> tableitemcontentsLocal;



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
       margin: const EdgeInsets.only(top: 10, bottom: 10),
       child:   
           Column(
             children: [
              // Title table row
              Table(
                columnWidths: const {
                  0: FixedColumnWidth(90.0),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(53.0),
                  3: FixedColumnWidth(53.0),
                  4: FixedColumnWidth(53),
                  5: FixedColumnWidth(53),
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                AppLocalizations.of(context)!.reporttabledate,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                AppLocalizations.of(context)!.reportFood,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                AppLocalizations.of(context)!.homeCarbohydrate,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                AppLocalizations.of(context)!.homeProtein,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                AppLocalizations.of(context)!.homeFat,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                AppLocalizations.of(context)!.reportexcercisecalorie,
                                 style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                  0: FixedColumnWidth(90.0),
                  1: FlexColumnWidth(),
                  2: FixedColumnWidth(53.0),
                  3: FixedColumnWidth(53.0),
                  4: FixedColumnWidth(53),
                  5: FixedColumnWidth(53),
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                tableitemcontentsLocal[index].date,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                tableitemcontentsLocal[index].food,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                '${tableitemcontentsLocal[index].carbs}',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                '${tableitemcontentsLocal[index].protein}',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                '${tableitemcontentsLocal[index].fat}',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
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
                              padding: const EdgeInsets.only(top: 5.0, bottom: 5, left:3, right: 3),
                              child: Text(
                                '${tableitemcontentsLocal[index].calorie}',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.roboto(
                                  color: Kcolors.mainBlack,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                )
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





  



