

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class CustomizeReport extends StatefulWidget {
  const CustomizeReport({super.key});

  @override
  State<CustomizeReport> createState() => _CustomizeReportState();
}

class _CustomizeReportState extends State<CustomizeReport> {

   String? _selectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems(); 
  }

  void _initializeitems() {

    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.reportGlucose , value: 'Sukari_report' ),
    DropDownItem(name: AppLocalizations.of(context)!.reportBp , value: 'Blood_pressure_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportInsulin , value: 'Insulin_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportMedicine , value: 'Medicine_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportExcercise , value: 'Excercise_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportFood , value: 'Food_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportFasting , value: 'Fasting_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportWeight , value: 'Weight_report'),
    DropDownItem(name: AppLocalizations.of(context)!.reportClinic , value: 'Clinic_report'),
      ];
  }

  // date picker
  DateTime? _selectedDate1;
  DateTime? _selectedDate2;

  // Date picker 1
  Future<void> _selectFirstDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: (_selectedDate1 ?? DateTime.now()).isAfter(_selectedDate2 ?? DateTime.now()) 
                  ? _selectedDate2 ?? DateTime.now() 
                  : _selectedDate1 ?? DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: _selectedDate2 ?? DateTime.now(),
    );
    if (picked != null && picked != _selectedDate1) {
      setState(() {
        _selectedDate1 = picked;
      });
    }
  }
  // Date picker 2
  Future<void> _selectSecondDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate2 ?? DateTime.now(),
      firstDate: _selectedDate1 ?? DateTime(2023),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate2) {
      setState(() {
        _selectedDate2 = picked;
      });
    }
  }


 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        leading:const CustomBackButton(),
        title: 
          Text(
          AppLocalizations.of(context)!.reportcreatereport,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            color: Kcolors.mainRed,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      body: 
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.all(15),
            child:
              FadeInLeft(
                animate: true,
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.reportReporttype ,
                       style: GoogleFonts.roboto(
                        color: Kcolors.mainBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                          
                    //type
                    Container(
                      height: 55,
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Kcolors.lightBlue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: DropdownButton<String>(
                                value: _selectedItem, // Currently selected item
                                hint: Text(AppLocalizations.of(context)!.reportselectdays,
                                  style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Kcolors.mainGrey,
                                  )
                                ), // Default hint text
                                icon: Icon(Icons.arrow_drop_down_outlined,
                                  size: 40,
                                  color: Kcolors.darkBlue,
                                ), // The icon shown for the dropdown
                                iconSize: 24,
                                elevation: 16,
                                isExpanded: true,
                                style: TextStyle(
                                  color: Kcolors.darkBlue, 
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  ),
                                underline: const SizedBox.shrink(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedItem = newValue; // Update the selected item
                                  });
                                },
                                items: _dropdownItems.map<DropdownMenuItem<String>>((DropDownItem item) {
                                  return DropdownMenuItem<String>(
                                    value: item.value,
                                    child: Text(
                                      item.name
                                    ),
                                  );
                                }).toList(), // Maping each string in the list to a DropdownMenuItem
                              ),
                        ),
                      ),
                    ),
                
                
                    //datepicker
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  AppLocalizations.of(context)!.reportcreatereportfirstday ,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ),
                              GestureDetector(
                              onTap: () {
                                _selectFirstDate(context);
                              },
                                child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.43,
                                decoration: BoxDecoration(
                                  color: Kcolors.lightBlue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                    _selectedDate1 == null
                                  ? AppLocalizations.of(context)!.reportselectdays
                                  : ' ${DateFormat('dd-MM-yyyy').format(_selectedDate1!)}',
                                  style: TextStyle(
                                    fontSize: 16, 
                                    color: Kcolors.darkBlue,
                                    fontWeight: FontWeight.w500
                                    ),
                                ),
                                                                  ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  AppLocalizations.of(context)!.reportcreatereportlastday ,
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  )
                                ),
                              ),
                              GestureDetector(
                              onTap: () {
                                _selectSecondDate(context);
                              },
                                child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.43,
                                decoration: BoxDecoration(
                                  color: Kcolors.lightBlue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                    _selectedDate2 == null
                                  ? AppLocalizations.of(context)!.reportselectdays
                                  : ' ${DateFormat('dd-MM-yyyy').format(_selectedDate2!)}',
                                  style: TextStyle(
                                    fontSize: 16, 
                                    color: Kcolors.darkBlue,
                                    fontWeight: FontWeight.w500
                                    ),
                                ),
                                                                  ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                
                     //below tab (download pdf)
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 15),
                      child:
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                color: Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(
                                child: 
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(AppLocalizations.of(context)!.reportDownloadpdf,
                                      textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          color: Kcolors.mainBlack
                                        )
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        margin: const EdgeInsets.only(left: 8),
                                        child: Image.asset(
                                          Kicons.premiumIcon,
                                          fit: BoxFit.cover
                                        ),
                                      )
                                    ]
                                  ),
                              )
                            ),
                          ),
                        ]
                      )
                    )
                
                
                  ]
                ),
              )
          ),
        )

    );
  }



}




class DropDownItem {
  DropDownItem({
    required this.name,
    required this.value,
  });

  String name;
  String value;
}

