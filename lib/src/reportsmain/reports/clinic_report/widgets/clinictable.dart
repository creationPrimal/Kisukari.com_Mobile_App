







import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/clinic_report/models/clinictablemodel.dart';

class ClinicTable extends StatefulWidget {
  const ClinicTable({super.key});

  @override
  State<ClinicTable> createState() => _ClinicTableState();
}

class _ClinicTableState extends State<ClinicTable> {

  late List<ClinicTableItems> tableitemcontentsLocal;


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
       margin: const EdgeInsets.only(top: 20, bottom: 10),
       child:   
           Column(
             children: [
              // Title table row
              Table(
                columnWidths: const {
                  0: FixedColumnWidth(130),
                  1: FlexColumnWidth(),
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
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              AppLocalizations.of(context)!.homeHospitalname,
                               style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              )
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
                  0: FixedColumnWidth(130),
                  1: FlexColumnWidth(),
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
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              tableitemcontentsLocal[index].clinicname,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              )
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





  



