


import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileHeightPicker extends StatefulWidget {
  const ProfileHeightPicker({super.key});

  @override
  State<ProfileHeightPicker> createState() => _ProfileHeightPickerState();
}

class _ProfileHeightPickerState extends State<ProfileHeightPicker> {

  // height togle & weight toggle
  bool _isToggled = false;
  Color _cm = Kcolors.mainWhite;
  Color _ft = Kcolors.darkBlue;

  void _toggle() {
    setState(() {
      _isToggled = !_isToggled;
      if(_isToggled) {
        _cm = Kcolors.darkBlue;
        _ft = Kcolors.mainWhite;
      } else if(!_isToggled){
        _cm = Kcolors.mainWhite;
        _ft = Kcolors.darkBlue;
      }
    });
  }

  // diabetes type
  String? _selectedItem; // Holds the selected item
  String? _measurementselectedItem; // Holds the selected item
  String? _medicationselectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;
  late List<MeasurementsItem> _measurementsItems;
  late List<MedicationTypeItem> _medicationItems;

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _medicationitems();
    _initializeitems(); 
  }

  @override
  void initState() {
    super.initState();
    _measurementsitems();
  }

  //diabetes type
  void _initializeitems() {
    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.diabetesType1 , value: 'diabetes_type1' ),
    DropDownItem(name: AppLocalizations.of(context)!.diabetesType2 , value: 'diabetes_type2'),
    DropDownItem(name: AppLocalizations.of(context)!.gestationalDiabetes , value: 'gestational_diabetes'),
    DropDownItem(name: AppLocalizations.of(context)!.otherTypeDiabetes , value: 'other_type'),
    DropDownItem(name: AppLocalizations.of(context)!.noDiabetes , value: 'no_diabetes'),
      ];
  }
  //measurements
  void _measurementsitems() {
    _measurementsItems = [
    MeasurementsItem(name: 'mmol/L' , value: 'mmol/L' ),
    MeasurementsItem(name: 'mg/dL' , value: 'mg/dL'),
      ];
  }
  //medications
  void _medicationitems() {
    _medicationItems = [
      MedicationTypeItem(name: AppLocalizations.of(context)!.insulin, value: 'insulin'),
      MedicationTypeItem(name: AppLocalizations.of(context)!.pills, value: 'Pills'),
      MedicationTypeItem(name: AppLocalizations.of(context)!.dietandexcercise, value: 'Diet_and_exercise '),
      MedicationTypeItem(name: AppLocalizations.of(context)!.alternativetreatments, value: 'Alternative_treatments'),
      MedicationTypeItem(name: AppLocalizations.of(context)!.notontreatment, value: 'Not_on_treatment'),
    ];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        leading: const CustomBackButton(),
      ),
      body:
        FadeInLeft(
          animate: true,
          duration: const Duration(milliseconds: 300),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Container(
                  margin: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
          
                        //top
                        Column(
                          children: [
                            
                            // nick name
                            Container(
                              height: 50,
                              margin: const EdgeInsets.only(bottom: 15),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child:
                              TextFormField(
                                autocorrect: false,
                                decoration: InputDecoration(
                                  labelText: AppLocalizations.of(context)!.nickname,
                                  prefixIcon: Icon(CupertinoIcons.person,
                                    size: 18,
                                    color: Kcolors.darkBlue,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 4),
                                  floatingLabelStyle: TextStyle(color: Kcolors.darkBlue),
                                )
                                
                              )
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width * 0.43,
                                  decoration: BoxDecoration(
                                    color: Kcolors.lightBlue,
                                    borderRadius: BorderRadius.circular(50)
                                  ),
                                  child:
                                  TextFormField(
                                    autocorrect: false,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      labelText: AppLocalizations.of(context)!.height,
                                      prefixIcon: Icon(Icons.height, color: Kcolors.darkBlue,),
                                      border: InputBorder.none,
                                      contentPadding: const EdgeInsets.symmetric(vertical: 3),
                                      floatingLabelStyle: TextStyle(color: Kcolors.darkBlue),
                                    )
                                    
                                  )
                                ),
                              
                                GestureDetector(
                                  onTap: () {
                                    _toggle();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width * 0.43,
                                    decoration: BoxDecoration(
                                      color: Kcolors.lightBlue,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child:
                                    Stack(
                                      children: [
                                        AnimatedAlign(
                                          duration: const Duration(milliseconds: 300),
                                          alignment:
                                              _isToggled ? Alignment.centerRight : Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              width: 90,
                                              height: 45,
                                              decoration: BoxDecoration(
                                                color: Kcolors.darkBlue,
                                                borderRadius: BorderRadius.circular(50),
                                              ),
                                            ),
                                          ),
                                        ),
                              
                                        Positioned(
                                          child:
                                          Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 10.0, right: 35),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(AppLocalizations.of(context)!.centimeter,
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    color: _cm,
                                                  )
                                                  ),
                                                  Text(AppLocalizations.of(context)!.feet,
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    color: _ft,
                                                  )
                                                  )
                                                ]
                                              ),
                                            ),
                                          )
                                        )
                              
                                      ],
                                    ),
                                  ),
                                ),
                              
                              ]
                            ),
                            
                            // diabetes type
                            Container(
                              height: 50,
                              margin: const EdgeInsets.symmetric(vertical: 15),
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
                                        hint: Text(AppLocalizations.of(context)!.diabetesType,
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

                             // diabetes measurements type
                            Container(
                              height: 50,
                              margin: const EdgeInsets.only(bottom: 15),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: DropdownButton<String>(
                                        value: _measurementselectedItem, // Currently selected item
                                        hint: Text(AppLocalizations.of(context)!.sugarMeasurementsType,
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
                                            _measurementselectedItem = newValue; // Update the selected item
                                          });
                                        },
                                        items: _measurementsItems.map<DropdownMenuItem<String>>((MeasurementsItem item) {
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

                             // diabetes mdication type
                            Container(
                              height: 50,
                              margin: const EdgeInsets.only(bottom: 15),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: DropdownButton<String>(
                                        value: _medicationselectedItem, // Currently selected item
                                        hint: Text(AppLocalizations.of(context)!.typeofmedication,
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
                                            _medicationselectedItem = newValue; // Update the selected item
                                          });
                                        },
                                        items: _medicationItems.map<DropdownMenuItem<String>>((MedicationTypeItem item) {
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
                                        
                            // email
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child:
                              TextFormField(
                                autocorrect: false,
                                decoration: InputDecoration(
                                  labelText: AppLocalizations.of(context)!.email,
                                  prefixIcon: Icon(Icons.email, size: 20, color: Kcolors.darkBlue,),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 4),
                                  floatingLabelStyle: TextStyle(color: Kcolors.darkBlue),
                                )
                                
                              )
                            ),
                          ],
                        ),
          
                        //below
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(top: 40, bottom: 30),
                            child: GestureDetector(
                            onTap: () {
                              
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.85,
                              margin: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                color: Kcolors.mainRed,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(
                                child: Text(AppLocalizations.of(context)!.save,
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
                        ),
                ),
              );
            }
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

class MeasurementsItem {
  MeasurementsItem({
    required this.name,
    required this.value,
  });

  String name;
  String value;
}

class MedicationTypeItem {
  MedicationTypeItem({
    required this.name,
    required this.value,
  });

  String name;
  String value;
}



