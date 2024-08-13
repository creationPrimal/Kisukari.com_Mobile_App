

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DiabetestypesWidget extends StatefulWidget {
  const DiabetestypesWidget({super.key});

  @override
  State<DiabetestypesWidget> createState() => _DiabetestypesWidgetState();
}

class _DiabetestypesWidgetState extends State<DiabetestypesWidget> {

  late List<ChecklistItem> _items;
  
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems(); // Code that depends on inherited widgets, like Theme.of(context), goes here.
  }

  void _initializeitems() {

    _items = [
      ChecklistItem(name: AppLocalizations.of(context)!.diabetesType1 , isChecked: true, description: AppLocalizations.of(context)!.diabetesType1Desc ),
      ChecklistItem(name: AppLocalizations.of(context)!.diabetesType2 , isChecked: false, description: AppLocalizations.of(context)!.diabetesType2Desc ),
      ChecklistItem(name: AppLocalizations.of(context)!.gestationalDiabetes , isChecked: false, description: AppLocalizations.of(context)!.gestationalDiabetesDesc ),
      ChecklistItem(name: AppLocalizations.of(context)!.otherTypeDiabetes , isChecked: false, description: AppLocalizations.of(context)!.otherTypeDiabetesDesc ),
      ChecklistItem(name: AppLocalizations.of(context)!.noDiabetes , isChecked: false, description: AppLocalizations.of(context)!.noDiabetesDesc ),
      ChecklistItem(name: AppLocalizations.of(context)!.noDiabetes , isChecked: false, description: AppLocalizations.of(context)!.idontknowDiabetesDesc ),
      ];
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 515,
      child: ListView.builder(
          itemCount: _items.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 17),
                decoration: BoxDecoration(
                  color: Kcolors.lightBlue,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: CheckboxListTile(
                    checkColor: Colors.white,
                    activeColor: Kcolors.darkBlue,
                    selectedTileColor: Colors.transparent, 
                    checkboxShape: CircleBorder(
                      side: BorderSide(color: Kcolors.darkBlue, width: 2.0)
                    ),
                    title: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _items[index].name,
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ), 
                          ),
                          _items[index].isChecked
                            ? Text(
                                _items[index].description,
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  height: 1.1,
                                ),
                              )
                            : Container(),
                        ],
                      ),
                    ),
                    value: _items[index].isChecked,
                    onChanged: (value) {
                      
                      setState(() {
                          // Uncheck all items
                          for (var item in _items) {
                            item.isChecked = false;
                          }
                          // Check the selected item
                          _items[index].isChecked = true;
                        
                          
                          
                        });
                    },// Add icon image here
                  ),
                ),
              ),
            );
          },
        ),
    );
  }
}





// Model class for checklist items
class ChecklistItem {
  ChecklistItem({
    required this.name,
    required this.description,
    this.isChecked = false,
  });

  String name;
  String description;
  bool isChecked;
}