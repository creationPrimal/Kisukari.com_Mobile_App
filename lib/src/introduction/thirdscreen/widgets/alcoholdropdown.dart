





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Alcoholdropdown extends StatefulWidget {
  const Alcoholdropdown({super.key});

  @override
  State<Alcoholdropdown> createState() => _AlcoholdropdownState();
}

class _AlcoholdropdownState extends State<Alcoholdropdown> {

  String? _selectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems();
  }

  void _initializeitems() {

    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.alcoholchoiceone , value: 'Beer' ),
    DropDownItem(name: AppLocalizations.of(context)!.alcoholchoicetwo , value: 'Wine'),
    DropDownItem(name: AppLocalizations.of(context)!.alcoholchoicethree , value: 'Spirits'),
    DropDownItem(name: AppLocalizations.of(context)!.alcoholchoicefour , value: 'Liqueurs'),
    DropDownItem(name: AppLocalizations.of(context)!.alcoholchoicefive , value: 'Local brew'),
      ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: DropdownButton<String>(
          value: _selectedItem, // Currently selected item
          hint: Text(AppLocalizations.of(context)!.alcoholchoiceone,
            style: GoogleFonts.roboto(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Kcolors.mainGrey,
            )
          ), // Default hint text
          icon: Icon(Icons.arrow_drop_down_outlined,
            size: 25,
            color: Kcolors.darkBlue,
          ), 
          iconSize: 24,
          elevation: 16,
          isExpanded: true,
          style: TextStyle(
            color: Kcolors.darkBlue, 
            fontSize: 15,
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
          }).toList(), 
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