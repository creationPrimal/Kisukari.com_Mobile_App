



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeartSecondPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const HeartSecondPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<HeartSecondPage> createState() => _HeartSecondPageState();
}

class _HeartSecondPageState extends State<HeartSecondPage> {

  
  // initialize the questions
  @override
  void didChangeDependencies(){
    _initQstn2();
    _initQstn4();
    _initializeitems();
    super.didChangeDependencies();
  }
  // qstn 2
  late List<SecondQstn> _secondqstn; // qstn 2
  void _initQstn2() {
    _secondqstn = [
      SecondQstn(title: AppLocalizations.of(context)!.male, icon: Kicons.malecoloredIcon, isActive: false),
      SecondQstn(title: AppLocalizations.of(context)!.female, icon: Kicons.femalecoloredIcon, isActive: false),
    ];
  }
  // qstn 4
  late List<FourthQstn> _fourthqstn; // qstn 4
  void _initQstn4() {
    _fourthqstn = [
      FourthQstn(title: AppLocalizations.of(context)!.yes, icon: Kicons.cigaretteIconIntro, isActive: false),
      FourthQstn(title: AppLocalizations.of(context)!.no, icon: Kicons.nosmokingIconIntro, isActive: false),
    ];
  }
  // date picker
  DateTime? _selectedDate;

  // Date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // community type
  String? _selectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;

  void _initializeitems() {
    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.selftestScreen6choice5 , value: 'This_week' ),
    DropDownItem(name: AppLocalizations.of(context)!.selftestScreen6choice1 , value: 'This_month'),
    DropDownItem(name: AppLocalizations.of(context)!.selftestScreen6choice7 , value: '2-6_months')
      ];
  }




  @override
  Widget build(BuildContext context) {

    final width = ScreenSize.screenWidth(context);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical, 
      child: Container(
        margin: const EdgeInsets.only(top: 5, bottom: 35),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // body
              Container(
                decoration: BoxDecoration(
                  color: Kcolors.mainRed,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          // title
                          Text(
                            AppLocalizations.of(context)!.mentalqstnstitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          const SizedBox(height:20), // space
                          // title body
                          Text(
                            AppLocalizations.of(context)!.mentalqstnsbody,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          const SizedBox(height:10), // space
                          // Questions
      

                          // qstn 1
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      '1. ${AppLocalizations.of(context)!.yourDateOfBirth}',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // date picker
                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                     child: Container(
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainWhite,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                         _selectedDate == null
                                        ? AppLocalizations.of(context)!.selectDate
                                        : ' ${DateFormat('dd-MM-yyyy').format(_selectedDate!)}',
                                        style: TextStyle(
                                          fontSize: 20, 
                                          color: Kcolors.mainBlack,
                                          fontWeight: FontWeight.w500
                                          ),
                                      ),
                                      ),
                                   ),
                                 
                                ]
                              )
                          ),
      
                          // qstn 2
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      '2. ${AppLocalizations.of(context)!.selectGender}',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      _secondqstn.length, (index) {
                                        final qstn2 = _secondqstn[index];
                                        return SizedBox(
                                          height: 140,
                                          width: width * 0.42,
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _secondqstn.length; i++) {
                                                    _secondqstn[i].isActive = false;
                                                  }
                                                  _secondqstn[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(qstn2.isActive? Kcolors.darkBlue : Kcolors.mainWhite)
                                              ),
                                              child:
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    // image
                                                    SizedBox(
                                                      height: 80, width: 80,
                                                      child: Image.asset(qstn2.icon, fit: BoxFit.cover)
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Text(
                                                        qstn2.title,
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.roboto(
                                                          color: qstn2.isActive? Kcolors.mainWhite : Kcolors.mainBlack, fontSize: 23, height: 1.2, fontWeight: FontWeight.w700,
                                                        )
                                                      ),
                                                    )
                                                  ]
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                ]
                              )
                          ),

                          // qstn 3
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      '3. ${AppLocalizations.of(context)!.hearttestcommunityname}',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // drop down
                                  Container(
                                    height: 55,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainWhite,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                        child: DropdownButton<String>(
                                              value: _selectedItem, // Currently selected item
                                              hint: Text(AppLocalizations.of(context)!.diabeticDirationSelectionLabel,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Kcolors.mainBlack,
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
                                 
                                ]
                              )
                          ),


                          // qstn 4
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child:
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Text(
                                      '4. ${AppLocalizations.of(context)!.hearttestsmocking}',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      _fourthqstn.length, (index) {
                                        final qstn4 = _fourthqstn[index];
                                        return SizedBox(
                                          height: 140,
                                          width: width * 0.42,
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _fourthqstn.length; i++) {
                                                    _fourthqstn[i].isActive = false;
                                                  }
                                                  _fourthqstn[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(qstn4.isActive? Kcolors.darkBlue : Kcolors.mainWhite)
                                              ),
                                              child:
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    // image
                                                    SizedBox(
                                                      height: 80, width: 80,
                                                      child: Image.asset(qstn4.icon, fit: BoxFit.cover)
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8.0),
                                                      child: Text(
                                                        qstn4.title,
                                                        textAlign: TextAlign.center,
                                                        style: GoogleFonts.roboto(
                                                          color: qstn4.isActive? Kcolors.mainWhite : Kcolors.mainBlack, fontSize: 23, height: 1.2, fontWeight: FontWeight.w700,
                                                        )
                                                      ),
                                                    )
                                                  ]
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                
                                ]
                              )
                          ),
                          
                          
                         
                        ]
                      )
                  )
              ),

              // below buttons
               Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  child:
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // back
                          GestureDetector(
                            onTap: widget.previousPage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Kcolors.mainRed,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child:
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_back_ios,
                                      color: Kcolors.mainWhite,
                                      size: 18
                                      ),
                                      Text(
                                      AppLocalizations.of(context)!.selftestback,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      )
                                                                    ),
                                    ],
                                  ),
                                ),
                            ),
                          ),
                          
                          
                          
                          // next
                          if (_selectedDate != null && (_secondqstn[0].isActive || _secondqstn[1].isActive) && _selectedItem != null && (_fourthqstn[0].isActive || _fourthqstn[1].isActive)) // check if all qstns are is answered
                            GestureDetector(
                              onTap:  widget.nextPage,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Kcolors.mainRed,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child:
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                        AppLocalizations.of(context)!.selftestforward,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.roboto(
                                          color: Kcolors.mainWhite,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        )
                                        ),
                                        Icon(Icons.arrow_forward_ios,
                                        color: Kcolors.mainWhite,
                                        size: 18
                                        ),
                                      ],
                                    ),
                                  ),
                              ),
                            )
                        ],
                      ),
                    ),
                ),
              )
            ]
          )
      ),
    );
  }
}


// first qstn
class Choices {
  Choices({
    required this.title,
    required this.isActive,
  });
  String title;
  bool isActive;
}

// second qstn
class SecondQstn {
  SecondQstn({
    required this.title,
    required this.icon,
    required this.isActive,
  });
  String title;
  String icon;
  bool isActive;
}

// second qstn
class FourthQstn {
  FourthQstn({
    required this.title,
    required this.icon,
    required this.isActive,
  });
  String title;
  String icon;
  bool isActive;
}

// drop down
class DropDownItem {
  DropDownItem({
    required this.name,
    required this.value,
  });

  String name;
  String value;
}
