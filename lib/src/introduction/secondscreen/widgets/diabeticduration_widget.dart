

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DiabeticDurationWidget extends StatefulWidget {
  const DiabeticDurationWidget({super.key});

  @override
  State<DiabeticDurationWidget> createState() => _DiabeticDurationWidgetState();
}

class _DiabeticDurationWidgetState extends State<DiabeticDurationWidget> {

  String? _selectedItem; // Holds the selected item

  late List<DropDownItem> _dropdownItems;

 
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeitems(); 
  }

  void _initializeitems() {

    _dropdownItems = [
    DropDownItem(name: AppLocalizations.of(context)!.thisWeek , value: 'This_week' ),
    DropDownItem(name: AppLocalizations.of(context)!.thisMonth , value: 'This_month'),
    DropDownItem(name: AppLocalizations.of(context)!.twoToSixMonths , value: '2-6_months'),
    DropDownItem(name: AppLocalizations.of(context)!.sixToTwelveMonths , value: '6-12_months'),
    DropDownItem(name: AppLocalizations.of(context)!.oneToTwoYears , value: '1-2_years'),
    DropDownItem(name: AppLocalizations.of(context)!.threeToFiveYears , value: '3-5_years'),
    DropDownItem(name: AppLocalizations.of(context)!.fiveToTenYears , value: '5-10_years'),
    DropDownItem(name: AppLocalizations.of(context)!.tenPlusYears , value: '10+_years'),
      ];
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
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
                hint: Text(AppLocalizations.of(context)!.diabeticDirationSelectionLabel,
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

