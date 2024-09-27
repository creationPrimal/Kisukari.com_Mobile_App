

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/src/more_section/onlineconsultation/timeselection.dart';
import 'package:table_calendar/table_calendar.dart';


class ConsultationDate extends StatefulWidget {
  const ConsultationDate({super.key});

  @override
  State<ConsultationDate> createState() => _ConsultationDateState();
}

class _ConsultationDateState extends State<ConsultationDate> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;


  // List to store multiple selected days
  final List<DateTime> _selectedDays = [
      DateTime.now().add(const Duration(days: 1)), // DateTime(2024, 9, 1),  // September 1, 2024
      DateTime.now().add(const Duration(days: 2)),  // DateTime(2024, 9, 15), // September 15, 2024
      DateTime.now().add(const Duration(days: 5)),  // DateTime(2024, 9, 20),
      DateTime.now().add(const Duration(days: 3)),
      DateTime.now().add(const Duration(days: 8)),
      DateTime.now().add(const Duration(days: 10)),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton()
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child:
              Column(
                children: [
                  // top Icon
                  Icon(Icons.calendar_month, color: Kcolors.mainRed, size: 60),
                  // title and body
                  SizedBox(
                    child:
                      Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.consultselectdatetitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 29,
                              height: 1.2,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text(
                            AppLocalizations.of(context)!.consultselectdatebody,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 21,
                              height: 1.2,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                  ),


                  // date picker
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child:
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TableCalendar(
                          firstDay: DateTime.now(),
                          lastDay: DateTime.now().add( const Duration(days: 365)),
                          focusedDay: _focusedDay,
                          locale: Localizations.localeOf(context).toLanguageTag(),  // Apply the locale here
                          calendarFormat: _calendarFormat,
                          daysOfWeekHeight: 20,
                          selectedDayPredicate: (day) {
                              // Check if the current day is in the list of selected days
                              return _selectedDays.any((selectedDay) =>
                                  isSameDay(selectedDay, day));
                            },
                          onDaySelected: (selectedDay, focusedDay) {
                            if (!isSameDay(_selectedDay, selectedDay)) {
                              // Call `setState()` when updating the selected day
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                              });
                            }
                          },
                          enabledDayPredicate: (day) {
                            // Only allow the selected days to be clickable
                            return _selectedDays.any((selectedDay) => isSameDay(selectedDay, day));
                          },
                          onFormatChanged: (format) {
                            if (_calendarFormat != format) {
                              // Call `setState()` when updating calendar format
                              setState(() {
                                _calendarFormat = format;
                              });
                            }
                          },
                          onPageChanged: (focusedDay) {
                            // No need to call `setState()` here
                            _focusedDay = focusedDay;
                          },
                          calendarStyle: CalendarStyle(
                              // Customize the selected day appearance
                              selectedDecoration: BoxDecoration(
                                color: Kcolors.mainRed, // Selected day color
                                shape: BoxShape.circle,
                              ),
                              defaultTextStyle: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 18,
                              ),
                              disabledTextStyle: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                fontSize: 18,
                              ),
                              selectedTextStyle: GoogleFonts.roboto(
                                color: Kcolors.mainWhite,
                                fontSize: 20,
                              ), 
                              todayDecoration: BoxDecoration(
                                color: Kcolors.darkBlue, // Today's day color
                                shape: BoxShape.circle,
                              ),
                            ),
                          daysOfWeekStyle: DaysOfWeekStyle(
                            weekdayStyle: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 17,
                            ),
                            weekendStyle: GoogleFonts.roboto(
                              color: Kcolors.mainBlack,
                              fontSize: 17,
                            )
                          ),
                          // Customizing the Header
                            headerStyle: HeaderStyle(
                            titleTextStyle: GoogleFonts.roboto(fontSize: 20.0, fontWeight: FontWeight.bold), // Title style
                            formatButtonVisible: false,   // Hide format button
                            titleCentered: true,          // Center the title
                            leftChevronIcon: Icon(Icons.chevron_left, color: Kcolors.mainBlack, size: 30),  // Left arrow style
                            rightChevronIcon: Icon(Icons.chevron_right, color: Kcolors.mainBlack, size: 30), // Right arrow style
                          ),
                              
                          ),

                          // date picked
                          _selectedDay != null ?
                          SizedBox(
                            child:
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:  '${AppLocalizations.of(context)!.consultselecteddate}: ',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainBlack,
                                                fontSize: 22,
                                                height: 1.2,
                                                fontWeight: FontWeight.w500
                                              )
                                          ),
                                          TextSpan(
                                            text:  '${_selectedDay!.day}-${_selectedDay!.month}-${_selectedDay!.year}',
                                              style: GoogleFonts.roboto(
                                                color: Kcolors.mainRed,
                                                fontSize: 22,
                                                height: 1.2,
                                                fontWeight: FontWeight.bold
                                              )
                                          )
                                        ]
                                      )
                                     ),
                                  ),
                                  // finish
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                                    child: 
                                    GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context, MaterialPageRoute(
                                          builder: (context) => ConsultTimePick(selectedDate: _selectedDay)
                                        )
                                      );
                                    },
                                    child: Container(
                                      height: 50,
                                      margin: const EdgeInsets.only(top: 5),
                                      decoration: BoxDecoration(
                                        color: Kcolors.mainRed,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: Text(AppLocalizations.of(context)!.continueNext,
                                        textAlign: TextAlign.center,
                                          style: GoogleFonts.roboto(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Kcolors.mainWhite
                                          )
                                        ),
                                      )
                                    ),
                                    ),
                                    
                                  )
                                ],
                              ),
                          )
                          :
                          const SizedBox.shrink(),
                      ],
                    ),
                  ),


                
                ]
              )
          )
      )
    );
  }
}


