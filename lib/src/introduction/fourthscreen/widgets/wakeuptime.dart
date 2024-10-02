



import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WakeUpTime extends StatefulWidget {
  const WakeUpTime({super.key});

  @override
  State<WakeUpTime> createState() => _WakeUpTimeState();
}

class _WakeUpTimeState extends State<WakeUpTime> {

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
    return Column(
      children: [
        // title
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 15),
          child: Text(
            AppLocalizations.of(context)!.wakeuptimetitle,
            textAlign: TextAlign.start,
            style: GoogleFonts.roboto(
              fontSize: 22,
              height: 1.2,
              color: Kcolors.mainBlack,
              fontWeight: FontWeight.bold,
            )
          ),
        ),
        GestureDetector(
          onTap: () {
            _selectTime(context);
          },
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Kcolors.lightBlue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: 
                  Text( 
                    _selectedTime == null
                    ? '00:00'
                    : _formatTime(_selectedTime!),
                    style: TextStyle(
                      fontSize: 25, 
                      color: Kcolors.darkBlue,
                      fontWeight: FontWeight.bold
                      ),
                  ),
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

