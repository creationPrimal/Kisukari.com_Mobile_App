


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MedicationOptions extends StatefulWidget {
  const MedicationOptions({super.key});

  @override
  State<MedicationOptions> createState() => _MedicationOptionsState();
}

class _MedicationOptionsState extends State<MedicationOptions> {

  late List<ChecklistItem> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems(); // initializing the list items
  }

  void _initializeitems() {
    _items = [
      ChecklistItem(title: AppLocalizations.of(context)!.insulin, isChecked: true, value: 'insulin', imagePath: Kicons.syringeIconIntro),
      ChecklistItem(title: AppLocalizations.of(context)!.pills, isChecked: false, value: 'Pills', imagePath: Kicons.pillsIconIntro),
      ChecklistItem(title: AppLocalizations.of(context)!.dietandexcercise, isChecked: false, value: 'Diet_and_exercise ', imagePath: Kicons.runningIconBlack),
      ChecklistItem(title: AppLocalizations.of(context)!.alternativetreatments, isChecked: false, value: 'Alternative_treatments', imagePath: Kicons.herbIconIntro),
      ChecklistItem(title: AppLocalizations.of(context)!.notontreatment, isChecked: false, value: 'Not_on_treatment', imagePath: Kicons.nomedicationsIconIntro ),
    ];

  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:
      Column(
        children: [

          // checklist title for diabetes medications
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              AppLocalizations.of(context)!.introTypeofmedicationtitle,
              textAlign: TextAlign.start,
              style: GoogleFonts.roboto(
                fontSize: 22,
                height: 1.2,
                color: Kcolors.mainBlack,
                fontWeight: FontWeight.bold,
              )
            ),
          ),

          SizedBox(
            child: Column(
              children: _items.map((item) {
                  return Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 17),
                      child: Row(
                        children: [
                      
                          Container(
                            width: 50, 
                            height: 50,
                            margin: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              child: Image.asset(
                                item.imagePath, 
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Kcolors.lightBlue,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: CheckboxListTile(
                                checkColor: Colors.white,
                                activeColor: Kcolors.darkBlue,
                                selectedTileColor: Colors.transparent, 
                                checkboxShape: CircleBorder(
                                  side: BorderSide(color: Kcolors.darkBlue, width: 2.0)
                                ),
                                title: Text(
                                        item.title,
                                        style: GoogleFonts.roboto(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ), 
                                      ),
                                   
                                    value: item.isChecked,
                                    onChanged: (value) {
                                  
                                  setState(() {
                                      // Uncheck all items
                                      for (var item in _items) {
                                        item.isChecked = false;
                                      }
                                      // Check the selected item
                                      item.isChecked = true;
                                    
                                      
                                      
                                    });
                                },// Add icon image here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList()
              ),
            ),
        ],

        
      ) 
      );
    
  }
}



// checklist model
class ChecklistItem {
  ChecklistItem({
    required this.title,
    required this.value,
    required this.isChecked,
    required this.imagePath,
  });

  String title;
  String value;
  bool isChecked;
  String imagePath;

}