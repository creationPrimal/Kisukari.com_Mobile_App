



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/measurements.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SugarEighthPage extends StatefulWidget {
  final VoidCallback nextPage;
  final VoidCallback previousPage;
  const SugarEighthPage({super.key, required this.nextPage, required this.previousPage});

  @override
  State<SugarEighthPage> createState() => _SugarEighthPageState();
}

class _SugarEighthPageState extends State<SugarEighthPage> {

  String? _weightselectedItem; // Holds the selected item
  String? _heightselectedItem; // Holds the selected item
  late List<WeightItem> _weightItems;
  late List<HeightItem> _heightItems;

  @override
  void initState() {
    super.initState();
    _weightitems();
    _heightitems();
  }

 //weights
  void _weightitems() {
    _weightItems = [
    WeightItem(name: 'Kg' , value: 'Kg' ),
    WeightItem(name: 'Lb' , value: 'Lb'),
      ];
  }
  //heights
  void _heightitems() {
    _heightItems = [
    HeightItem(name: 'Cm' , value: 'Cm' ),
    HeightItem(name: 'Ft' , value: 'Ft'),
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
                  color: Kcolors.mainBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: 
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                      Column(
                        children: [
                          const SizedBox(height:20), // space
                          // title
                          Text(
                            AppLocalizations.of(context)!.selftestScreen7title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 28,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          // info icon
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.info,
                              color: Kcolors.mainWhite,
                              size: 30,
                            ),
                          ),
                          const SizedBox(height:20), // space
                          // title body
                          Text(
                            AppLocalizations.of(context)!.selftestScreen7body,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainWhite,
                              fontSize: 20,
                              height: 1.2,
                            )
                          ),
                          const SizedBox(height:10), // space
                          
      
                          // choices
                          Container(
                            width: width,
                            margin: const EdgeInsets.only(top: 10, bottom: 50),
                            child:
                              //inputs
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
    
                                    // weight
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      margin: const EdgeInsets.only(bottom: 20),
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainWhite.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.selftestScreen7fillweight,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainWhite,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                              Container(
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainWhite,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child:
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      // input
                                                      Container(
                                                        height: 45,
                                                        width: MediaQuery.of(context).size.width * 0.3,
                                                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                                        child:
                                                        TextFormField(
                                                          autocorrect: false,
                                                          textAlign: TextAlign.center,
                                                          keyboardType: TextInputType.phone,
                                                          decoration: const InputDecoration(
                                                            hintText: '00',
                                                            border: InputBorder.none,
                                                            contentPadding: EdgeInsets.symmetric(vertical: 4),
                                                          ),
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 30,
                                                            
                                                          )
                                                          
                                                        )
                                                      ),
                                                      // line
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: Kcolors.lightGrey,
                                                        ),
                                                      ),
                                                      
                                                      // choices
                                                      Container(
                                                        height: 45,
                                                        width: MediaQuery.of(context).size.width * 0.3,
                                                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                                        child:
                                                          Center(
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                            child: DropdownButton<String>(
                                                                  value: _weightselectedItem, // Currently selected item
                                                                  hint: Text('Kg',
                                                                    style: GoogleFonts.roboto(
                                                                      fontSize: 20,
                                                                      fontWeight: FontWeight.w600,
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
                                                                      _weightselectedItem = newValue; // Update the selected item
                                                                    });
                                                                  },
                                                                  items: _weightItems.map<DropdownMenuItem<String>>((WeightItem item) {
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
                                                      )
                                                    ]
                                                  )
                                              ),
    
                                            ]
                                          ),
                                        )
                                    ),
    
                                    // height
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      margin: const EdgeInsets.only(bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainWhite.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child:
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)!.selftestScreen7fillheight,
                                                style: GoogleFonts.roboto(
                                                  color: Kcolors.mainWhite,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                )
                                              ),
                                              Container(
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.mainWhite,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child:
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      // input
                                                      Container(
                                                        height: 45,
                                                        width: MediaQuery.of(context).size.width * 0.3,
                                                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                                        child:
                                                        TextFormField(
                                                          autocorrect: false,
                                                          textAlign: TextAlign.center,
                                                          keyboardType: TextInputType.phone,
                                                          decoration: const InputDecoration(
                                                            hintText: '00',
                                                            border: InputBorder.none,
                                                            contentPadding: EdgeInsets.symmetric(vertical: 4),
                                                          ),
                                                          style: GoogleFonts.roboto(
                                                            color: Kcolors.mainBlack,
                                                            fontSize: 30,
                                                            
                                                          )
                                                          
                                                        )
                                                      ),
                                                      // line
                                                      Container(
                                                        width: 2,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                          color: Kcolors.lightGrey,
                                                        ),
                                                      ),
                                                      
                                                      // choices
                                                      Container(
                                                        height: 45,
                                                        width: MediaQuery.of(context).size.width * 0.3,
                                                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                                        child:
                                                          Center(
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                                            child: DropdownButton<String>(
                                                                  value: _heightselectedItem, // Currently selected item
                                                                  hint: Text('Cm',
                                                                    style: GoogleFonts.roboto(
                                                                      fontSize: 20,
                                                                      fontWeight: FontWeight.w600,
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
                                                                      _heightselectedItem = newValue; // Update the selected item
                                                                    });
                                                                  },
                                                                  items: _heightItems.map<DropdownMenuItem<String>>((HeightItem item) {
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
                                                      )
                                                    ]
                                                  )
                                              ),
    
                                            ]
                                          ),
                                        )
                                    ),
    
                                    // bmi
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.8,
                                      child:
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'BMI',
                                              style: GoogleFonts.roboto(
                                                fontSize: 22,
                                                color: Kcolors.mainWhite,
                                                fontWeight: FontWeight.bold
                                              )
                                            ),
                                            Container(
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Kcolors.mainWhite.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              child:
                                                Center(
                                                  child: 
                                                      Text(
                                                    '26.3 kg/m\u00B2',
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 30,
                                                      color: Kcolors.mainWhite,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                )
    
                                            )
                                          ]
                                        )
                                    )
    
                                  ]
    
                                ),
                              ),
                          
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
                                color: Kcolors.mainBlue,
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
                          //if ( _affirmbtns[0].isActive || _affirmbtns[1].isActive ) // check if all qstns are is selected
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


class WeightItem {
  WeightItem({
    required this.name,
    required this.value,
  });

  String name;
  String value;
}

class HeightItem {
  HeightItem({
    required this.name,
    required this.value,
  });

  String name;
  String value;
}


