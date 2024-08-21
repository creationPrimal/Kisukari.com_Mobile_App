

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:table_calendar/table_calendar.dart';

class ScrollCalender extends StatefulWidget {
  const ScrollCalender({super.key});

  @override
  State<ScrollCalender> createState() => _ScrollCalenderState();
}

class _ScrollCalenderState extends State<ScrollCalender> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: TableCalendar(
        // locale: Localizations.localeOf(context).toString(),
        rowHeight: 60,
        firstDay: DateTime.utc(2020, 1, 1),
        lastDay: DateTime.now(),
        focusedDay: _focusedDay,
        daysOfWeekVisible: true,
        calendarFormat: CalendarFormat.week,
        startingDayOfWeek: StartingDayOfWeek.monday,
        headerVisible: false,

        // Customize the calendar styling
        calendarStyle: CalendarStyle(
          cellMargin: const EdgeInsets.all(10),
          defaultDecoration: BoxDecoration(
            color: Kcolors.mainRed.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          todayDecoration: BoxDecoration(
            color: Kcolors.mainRed,
            shape: BoxShape.circle,
          ),
          todayTextStyle: GoogleFonts.roboto(
            color: Kcolors.mainWhite,
            fontSize: 15,
            fontWeight: FontWeight.w600
            ),
          weekendDecoration: BoxDecoration(
            color: Kcolors.mainRed.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          weekendTextStyle: GoogleFonts.roboto(
            color: Kcolors.mainBlack,
            fontSize: 15,
            fontWeight: FontWeight.w600
            ),
          defaultTextStyle: GoogleFonts.roboto(
            color: Kcolors.mainBlack,
            fontSize: 15,
            fontWeight: FontWeight.w600
            ),
          selectedDecoration: BoxDecoration(
            color: Kcolors.darkBlue,
            shape: BoxShape.circle,
          )
        ),

        // Functionality to highlight the selected day
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },

        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },

        // Customize days of the week here
        daysOfWeekStyle: DaysOfWeekStyle(
          weekendStyle: GoogleFonts.roboto(
            color: Kcolors.darkBlue,
            fontSize: 14,
            fontWeight: FontWeight.w600
            ),
          weekdayStyle: GoogleFonts.roboto(
            color: Kcolors.mainBlack,
            fontSize: 14,
            fontWeight: FontWeight.w600
            ),
        ),

        /*  // Customize the calendar to display shortened weekdays
        calendarBuilders: CalendarBuilders(
          dowBuilder: (context, day) {
            final text = DateFormat.E(Localizations.localeOf(context).toString()).format(day);
            
            // Return only the first 2 or 3 letters of the weekday
            return Center(
              child: Text(
                text.substring(0, 6), // Adjust the number of letters here
                style: TextStyle(color: Colors.black),
              ),
            );
          },
        ), */

        // Customize the calendar UI (for your circular day view) here (DONT USE THIS CODE!~!)
       /*  calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat.E().format(day),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: day == _selectedDay
                          ? Colors.red
                          : Colors.redAccent,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      day.day.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ), */
      ),
    );
  }
}


/* class Scrollcalender extends StatefulWidget {
  const Scrollcalender({super.key});

  @override
  State<Scrollcalender> createState() => _ScrollcalenderState();
}

class _ScrollcalenderState extends State<Scrollcalender> {
 /*  List<DateTime> days = [];

  @override
  void initState() {
    super.initState();
    _generateDays();
  }

   // Function to generate the days from today to the beginning of the month
  void _generateDays() {
    DateTime today = DateTime.now();
    DateTime startOfMonth = DateTime(today.year, today.month, 1);
    days = [];

    // Loop to generate dates from today to the start of the month
    for (int i = 0; i <= today.difference(startOfMonth).inDays; i++) {
      days.add(today.subtract(Duration(days: i)));
    }
    
    setState(() {}); // Update the UI with the new list of days
  }
 */
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Kcolors.lightGrey,
      ),
      /* child: 
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: days.map((day) {
            return _buildDay(day);
          }).toList(),
        ),
        
    );
  }

   Widget _buildDay(DateTime day) {
    String dayName = DateFormat('EEE').format(day); // Get day of the week (e.g., Mo, Tu)
    String dayNumber = day.day.toString(); // Get day number (e.g., 12, 13)

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(dayName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        CircleAvatar(
          backgroundColor: day.day == DateTime.now().day ? Colors.red : Colors.redAccent,
          radius: 25,
          child: Text(
            dayNumber,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  } */
    );
}
}
 */





