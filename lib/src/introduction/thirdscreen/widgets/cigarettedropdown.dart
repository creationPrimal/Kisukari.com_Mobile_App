


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cigarettedropdown extends StatefulWidget {
  const Cigarettedropdown({super.key});

  @override
  State<Cigarettedropdown> createState() => _CigarettedropdownState();
}

class _CigarettedropdownState extends State<Cigarettedropdown> {

  String? _selectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems();
  }

  void _initializeitems() {

    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.ciggaretes , value: 'Ciggaretes' ),
    DropDownItem(name: AppLocalizations.of(context)!.hookah , value: 'Hookah (sheesha)'),
    DropDownItem(name: AppLocalizations.of(context)!.cigars , value: 'Cigars / pipe tobacco'),
    DropDownItem(name: AppLocalizations.of(context)!.snuff , value: 'Snuff'),
    DropDownItem(name: AppLocalizations.of(context)!.cannabis , value: 'Cannabis'),
      ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: DropdownButton<String>(
          value: _selectedItem, // Currently selected item
          hint: Text(AppLocalizations.of(context)!.select,
            style: GoogleFonts.roboto(
              fontSize: 18,
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