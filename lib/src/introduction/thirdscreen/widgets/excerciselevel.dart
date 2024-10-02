


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ExcerciseLevel extends StatefulWidget {
  const ExcerciseLevel({super.key});

  @override
  State<ExcerciseLevel> createState() => _ExcerciseLevelState();
}

class _ExcerciseLevelState extends State<ExcerciseLevel> {

  String? _selectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems(); 
  }

  void _initializeitems() {

    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.introsleeptimeoption1 , value: '1' ),
    DropDownItem(name: AppLocalizations.of(context)!.introsleeptimeoption2 , value: '2'),
    DropDownItem(name: AppLocalizations.of(context)!.introsleeptimeoption3 , value: '3'),
    DropDownItem(name: AppLocalizations.of(context)!.introsleeptimeoption4 , value: '4'),
    DropDownItem(name: AppLocalizations.of(context)!.introsleeptimeoption5 , value: '5'),
      ];
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // title
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            AppLocalizations.of(context)!.introsleeptimetitle,
            textAlign: TextAlign.start,
            style: GoogleFonts.roboto(
              fontSize: 22,
              height: 1.2,
              color: Kcolors.mainBlack,
              fontWeight: FontWeight.bold,
            )
          ),
        ),
        Container(
          height: 55,
          margin: const EdgeInsets.only(top: 10),
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
                    hint: Text(AppLocalizations.of(context)!.select,
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
      ],
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

