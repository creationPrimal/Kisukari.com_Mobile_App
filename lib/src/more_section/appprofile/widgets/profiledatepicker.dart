


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileDatePicker extends StatefulWidget {
  const ProfileDatePicker({super.key});

  @override
  State<ProfileDatePicker> createState() => _ProfileDatePickerState();
}

class _ProfileDatePickerState extends State<ProfileDatePicker> {

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


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _selectDate(context);
      },
      child: Text(
        _selectedDate == null
        ? AppLocalizations.of(context)!.selectDate
        : ' ${DateFormat('dd-MM-yyyy').format(_selectedDate!)}',
        style: GoogleFonts.roboto(
          color: Kcolors.darkBlue,
          fontSize: 19,
          fontWeight: FontWeight.bold
        )
      ),
    );
  }
}