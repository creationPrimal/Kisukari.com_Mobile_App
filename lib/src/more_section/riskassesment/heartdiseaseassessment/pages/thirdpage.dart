



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart'; 

class HeartThirdPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const HeartThirdPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<HeartThirdPage> createState() => _HeartThirdPageState();
}

class _HeartThirdPageState extends State<HeartThirdPage> {

  
  // initialize the questions
  @override
  void didChangeDependencies(){
    _initQstn1();
    _initQstn2();
    _inititems();
    super.didChangeDependencies();
  }
  // qstn 1
  late List<FirstQstn> _firstqstn; // qstn 1
  void _initQstn1() {
    _firstqstn = [
      FirstQstn(title: AppLocalizations.of(context)!.yes, isActive: false),
      FirstQstn(title: AppLocalizations.of(context)!.no, isActive: false),
    ];
  }
  // qstn 2
  late List<SecondQstn> _secondqstn; // qstn 2
  void _initQstn2() {
    _secondqstn = [
      SecondQstn(title: AppLocalizations.of(context)!.yes, isActive: false),
      SecondQstn(title: AppLocalizations.of(context)!.no, isActive: false),
    ];
  }
  // qstn 4
  String? _selectedItem; // Holds the selected item
  late List<DropDownItem> _dropdownItems;
  void _inititems() {
    _dropdownItems = [
    DropDownItem(name: 'mg/dL' , value: 'mg/dL' ),
    DropDownItem(name: 'mmol/l' , value: 'mmol/l')
      ];
  }

  // qstn 3
  // time picker
  TimeOfDay? _selectedTime;
  // time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }
  // Function to format time as 10:00 AM
  String _formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final dateTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat('hh:mm a').format(dateTime); // Format time as 10:00 AM
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
                                      AppLocalizations.of(context)!.hearttestqstn1,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 25,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                   Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      _firstqstn.length, (index) {
                                        final qstn1 = _firstqstn[index];
                                        return SizedBox(
                                          height: 50,
                                          width: width * 0.42,
                                          child:
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  for (int i = 0; i < _firstqstn.length; i++) {
                                                    _firstqstn[i].isActive = false;
                                                  }
                                                  _firstqstn[index].isActive = true;
                                                });
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(qstn1.isActive? Kcolors.darkBlue : Kcolors.mainWhite)
                                              ),
                                              child:
                                                Text(
                                                  qstn1.title,
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    color: qstn1.isActive? Kcolors.mainWhite : Kcolors.mainBlack, fontSize: 23, height: 1.2, fontWeight: FontWeight.w700,
                                                  )
                                                )
                                            )
                                        );
                                      }
                                    )
                                  )
                                
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
                                      AppLocalizations.of(context)!.hearttestqstn2,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 25,
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
                                          height: 50,
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
                                                  borderRadius: BorderRadius.circular(30),
                                                )),
                                                backgroundColor: WidgetStateProperty.all(qstn2.isActive? Kcolors.darkBlue : Kcolors.mainWhite)
                                              ),
                                              child:
                                                Text(
                                                  qstn2.title,
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.roboto(
                                                    color: qstn2.isActive? Kcolors.mainWhite : Kcolors.mainBlack, fontSize: 23, height: 1.2, fontWeight: FontWeight.w700,
                                                  )
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
                                      AppLocalizations.of(context)!.hearttestqstn3,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 25,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // buttons
                                   Column(
                                    children: [

                                      // time picker
                                      GestureDetector(
                                        onTap: () {
                                          _selectTime(context);
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                            color: Kcolors.mainWhite,
                                            borderRadius: BorderRadius.circular(12)
                                          ),
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: 90,
                                                  child:
                                                    Row(
                                                      children: [
                                                        Icon(Icons.more_time, size: 20, color: Kcolors.mainBlack),
                                                        Text(
                                                          ' ${AppLocalizations.of(context)!.reporttabletime}: ',
                                                          textAlign: TextAlign.start,
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 20,
                                                            height: 1.3,
                                                            fontWeight: FontWeight.w600
                                                          )
                                                        ),
                                                      ]
                                                    )
                                                ),
                                                Text( 
                                                  _selectedTime == null
                                                  ? '00:00 AM'
                                                  : _formatTime(_selectedTime!),
                                                  style: TextStyle(
                                                    fontSize: 25, 
                                                    color: Kcolors.mainBlack,
                                                    fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                  child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Icon(Icons.arrow_drop_down_outlined,
                                                      size: 40,
                                                      color: Kcolors.mainBlack,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          ),
                                      ),

                                      // blood pressure input
                                      SizedBox(
                                        child:
                                          Container(
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(12) ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!.hearttestbloodpressure,
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.roboto(
                                                    color: Kcolors.mainBlack,
                                                    fontSize: 19,
                                                  )
                                                ),
                                                Container(
                                                  height: 50,
                                                  decoration: BoxDecoration( color: Kcolors.lightGrey, borderRadius: BorderRadius.circular(8) ),
                                                  child:
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      SizedBox(
                                                        width: MediaQuery.of(context).size.width * 0.4,
                                                        child: TextFormField(
                                                          autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                          style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                          decoration: const InputDecoration(hintText: '00/00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                        ),
                                                      ),
                                                      // separator
                                                      Container( width: 1.5, height: 35,decoration: BoxDecoration( color: Kcolors.mainGrey, ),
                                                      ),
                                                      SizedBox(
                                                        width: MediaQuery.of(context).size.width * 0.4,
                                                        child: Center(
                                                          child: Text(
                                                            'mmHg',
                                                            textAlign: TextAlign.start,
                                                            style: GoogleFonts.roboto(
                                                              color: Kcolors.mainBlack,
                                                              fontSize: 25,
                                                            )
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ]
                                   )
                                
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
                                      AppLocalizations.of(context)!.hearttestqstn4,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 23,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text(
                                      AppLocalizations.of(context)!.hearttestselectmeasurements,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        color: Kcolors.mainWhite,
                                        fontSize: 19,
                                        height: 1.3,
                                      )
                                    ),
                                  ),
                                  // drop down
                                  Container(
                                    height: 55,
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(bottom: 10.0),
                                    decoration: BoxDecoration(
                                      color: Kcolors.mainWhite,
                                      borderRadius: BorderRadius.circular(10),
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
                                  // inputs
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(12) ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.hearttesttotlacholesteral,
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                )
                                              ),
                                              Container(
                                                height: 50,
                                                decoration: BoxDecoration( color: Kcolors.lightGrey, borderRadius: BorderRadius.circular(8) ),
                                                child:
                                                TextFormField(
                                                  autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                  style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                  decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration( color: Kcolors.mainWhite, borderRadius: BorderRadius.circular(12) ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Triglycerides',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainBlack,
                                                  fontSize: 19,
                                                )
                                              ),
                                              Container(
                                                height: 50,
                                                decoration: BoxDecoration( color: Kcolors.lightGrey, borderRadius: BorderRadius.circular(8) ),
                                                child:
                                                TextFormField(
                                                  autocorrect: false, textAlign: TextAlign.center, keyboardType: TextInputType.number,
                                                  style: GoogleFonts.roboto(fontSize: 30,color: Kcolors.darkBlue,),
                                                  decoration: const InputDecoration(hintText: '00',border: InputBorder.none, contentPadding: EdgeInsets.symmetric(vertical: 4),)
                                                )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]
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
                          if ((_firstqstn[0].isActive || _firstqstn[1].isActive) &&  
                              (_secondqstn[0].isActive || _secondqstn[1].isActive) &&
                              (_selectedTime != null) ) // check if all qstns are answered
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
class FirstQstn {
  FirstQstn({
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
    required this.isActive,
  });
  String title;
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
