

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';

class FirstIntroDialog extends StatefulWidget {
  const FirstIntroDialog({super.key});

  @override
  State<FirstIntroDialog> createState() => _FirstIntroDialogState();
}

class _FirstIntroDialogState extends State<FirstIntroDialog> {


  final _formKey = GlobalKey<FormState>();
  
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

  // gender picker
  Color _maleispicked = Kcolors.lightGrey;
  Color _maleispickedtitle = Kcolors.darkBlue;
  Color _femaleispicked = Kcolors.lightGrey;
  Color _femaleispickedtitle = Kcolors.darkBlue;

  void _malebuttonColor() {
    setState(() {
      _maleispicked = _maleispicked == Kcolors.lightGrey ? Kcolors.darkBlue : Kcolors.lightGrey;
      _maleispickedtitle = _maleispickedtitle == Kcolors.darkBlue ?  Kcolors.mainWhite : Kcolors.darkBlue;
      _femaleispicked == Kcolors.darkBlue ? _femaleispicked = Kcolors.lightGrey : _maleispicked = Kcolors.darkBlue;
      _femaleispickedtitle == Kcolors.mainWhite ? _femaleispickedtitle = Kcolors.darkBlue : _maleispickedtitle = Kcolors.mainWhite;
      
    });
  }
  void _femalebuttonColor() {
    setState(() {
      _femaleispicked = _femaleispicked == Kcolors.lightGrey ? Kcolors.darkBlue : Kcolors.lightGrey;
      _femaleispickedtitle = _femaleispickedtitle == Kcolors.darkBlue ?  Kcolors.mainWhite : Kcolors.darkBlue;
      _maleispicked == Kcolors.darkBlue ? _maleispicked = Kcolors.lightGrey : _femaleispicked = Kcolors.darkBlue;
      _maleispickedtitle == Kcolors.mainWhite ? _maleispickedtitle = Kcolors.darkBlue : _femaleispickedtitle = Kcolors.mainWhite;
      
    });
  }


  // measurements picker
  Color _mmolispicked = Kcolors.darkBlue;
  Color _mmolispickedtitle = Kcolors.mainWhite;
  Color _mgispicked = Kcolors.lightBlue;
  Color _mgispickedtitle = Kcolors.darkBlue;

  void _mmolbuttonColor() {
    setState(() {
      _mmolispicked = _mmolispicked == Kcolors.lightBlue ? Kcolors.darkBlue : Kcolors.lightBlue;
      _mmolispickedtitle = _mmolispickedtitle == Kcolors.darkBlue ?  Kcolors.mainWhite : Kcolors.darkBlue;
      _mgispicked == Kcolors.darkBlue ? _mgispicked = Kcolors.lightBlue : _mmolispicked = Kcolors.darkBlue;
      _mgispickedtitle == Kcolors.mainWhite ? _mgispickedtitle = Kcolors.darkBlue : _mmolispickedtitle = Kcolors.mainWhite;
      
    });
  }
  void _mgbuttonColor() {
    setState(() {
      _mgispicked = _mgispicked == Kcolors.lightBlue ? Kcolors.darkBlue : Kcolors.lightBlue;
      _mgispickedtitle = _mgispickedtitle == Kcolors.darkBlue ?  Kcolors.mainWhite : Kcolors.darkBlue;
      _mmolispicked == Kcolors.darkBlue ? _mmolispicked = Kcolors.lightBlue : _mgispicked = Kcolors.darkBlue;
      _mmolispickedtitle == Kcolors.mainWhite ? _mmolispickedtitle = Kcolors.darkBlue : _mgispickedtitle = Kcolors.mainWhite;
      
    });
  }

  // height togle & weight toggle
  bool _isToggled = false;
  bool _weightisToggled = false;
  Color _cm = Kcolors.mainWhite;
  Color _ft = Kcolors.darkBlue;
  Color _kg = Kcolors.mainWhite;
  Color _lb = Kcolors.darkBlue;

  void _toggle() {
    setState(() {
      _isToggled = !_isToggled;
      if(_isToggled) {
        _cm = Kcolors.darkBlue;
        _ft = Kcolors.mainWhite;
      } else if(!_isToggled){
        _cm = Kcolors.mainWhite;
        _ft = Kcolors.darkBlue;
      }
    });
  }
  void _weighttoggle() {
    setState(() {
      _weightisToggled = !_weightisToggled;
      if(_weightisToggled) {
        _kg = Kcolors.darkBlue;
        _lb = Kcolors.mainWhite;
      } else if(!_weightisToggled){
        _kg = Kcolors.mainWhite;
        _lb = Kcolors.darkBlue;
      }
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: 
          SizedBox(
            height: 22,
            child:
            Image.asset(
              Kimages.logo,
              fit: BoxFit.contain,
            )
          )
      ),
      body: 
      LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
                constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                  
                  

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Text(
                              AppLocalizations.of(context)!.firstintrohead,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),

                          Form(
                            key: _formKey,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  Text(
                                    AppLocalizations.of(context)!.yourDateOfBirth,
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ),

                                  GestureDetector(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                     child: Container(
                                      height: 50,
                                      margin: const EdgeInsets.symmetric(vertical: 10),
                                      decoration: BoxDecoration(
                                        color: Kcolors.lightBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                         _selectedDate == null
                                        ? AppLocalizations.of(context)!.selectDate
                                        : ' ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}',
                                        style: TextStyle(
                                          fontSize: 20, 
                                          color: Kcolors.darkBlue,
                                          fontWeight: FontWeight.w500
                                          ),
                                      ),
                                                                       ),
                                   ),

                                  Container(
                                    margin: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      AppLocalizations.of(context)!.selectGender,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightGrey,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child:
                                        ElevatedButton(
                                          
                                          onPressed: () {
                                             _malebuttonColor();
                                             
                                             
                                          },
                                          style: ButtonStyle(
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0),
                                          )),
                                          backgroundColor: WidgetStateProperty.all(_maleispicked),
                                        ),
                                          child: 
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                        
                                              Image.asset(Kicons.malecoloredIcon,
                                              fit: BoxFit.contain,
                                              ),
                                        
                                              Text(AppLocalizations.of(context)!.male,
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                color: _maleispickedtitle
                                              )
                                              )
                                        
                                            ]
                                          )
                                        )
                                      ),
                                       Container(
                                        height: 150,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightGrey,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child:
                                          ElevatedButton(
                                            
                                            onPressed: () {
                                               _femalebuttonColor();
                                            },
                                            style: ButtonStyle(
                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8.0),
                                            )),
                                            backgroundColor: WidgetStateProperty.all(_femaleispicked),
                                          ),
                                            child: 
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                          
                                                Image.asset(Kicons.femalecoloredIcon,
                                                fit: BoxFit.contain,
                                                ),
                                          
                                                Text(AppLocalizations.of(context)!.female,
                                                style: GoogleFonts.roboto(
                                                  fontSize: 18,
                                                  color: _femaleispickedtitle
                                                )
                                                )
                                          
                                              ]
                                            )
                                          )
                                      )
                                    ]
                                  ),

                                  Container(
                                    margin: const EdgeInsets.symmetric(vertical: 15),
                                    child: Text(
                                      AppLocalizations.of(context)!.sugarMeasurements,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child:
                                        ElevatedButton(
                                          onPressed: () {
                                             _mmolbuttonColor();
                                             
                                          },
                                          style: ButtonStyle(
                                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),
                                          )),
                                          backgroundColor: WidgetStateProperty.all(_mmolispicked),
                                        ),
                                          child:
                                              Text('mmol/L',
                                              style: GoogleFonts.roboto(
                                                fontSize: 18,
                                                color: _mmolispickedtitle
                                              )
                                            )
                                        
                                        )
                                      ),

                                       Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child:
                                          ElevatedButton(
                                            onPressed: () {
                                               _mgbuttonColor();
                                            },
                                            style: ButtonStyle(
                                            shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(50),
                                            )),
                                            backgroundColor: WidgetStateProperty.all(_mgispicked),
                                          ),
                                            child: 
                                                Text('mg/dL',
                                                style: GoogleFonts.roboto(
                                                  fontSize: 18,
                                                  color: _mgispickedtitle
                                                )
                                                )
                                          
                                          )
                                      )
                                    ]
                                  ),

                                  Container(
                                    margin: const EdgeInsets.symmetric(vertical: 15),
                                    child: Text(
                                      AppLocalizations.of(context)!.bodyMeasurements,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        child:
                                        TextFormField(
                                          autocorrect: false,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            labelText: AppLocalizations.of(context)!.height,
                                            prefixIcon: const Icon(Icons.height),
                                            border: InputBorder.none,
                                            contentPadding: const EdgeInsets.symmetric(vertical: 3),
                                            floatingLabelStyle: TextStyle(color: Kcolors.darkBlue),
                                          )
                                          
                                        )
                                      ),

                                      GestureDetector(
                                        onTap: () {
                                          _toggle();
                                        },
                                        child: Container(
                                          height: 50,
                                          width: MediaQuery.of(context).size.width * 0.43,
                                          decoration: BoxDecoration(
                                            color: Kcolors.lightBlue,
                                            borderRadius: BorderRadius.circular(50)
                                          ),
                                          child:
                                          Stack(
                                            children: [
                                              AnimatedAlign(
                                                duration: const Duration(milliseconds: 300),
                                                alignment:
                                                    _isToggled ? Alignment.centerRight : Alignment.centerLeft,
                                                child: Container(
                                                  width: 90,
                                                  height: 45,
                                                  decoration: BoxDecoration(
                                                    color: Kcolors.darkBlue,
                                                    borderRadius: BorderRadius.circular(50),
                                                  ),
                                                ),
                                              ),

                                              Positioned(
                                                child:
                                                Center(
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10.0, right: 35),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(AppLocalizations.of(context)!.centimeter,
                                                        style: GoogleFonts.roboto(
                                                          fontWeight: FontWeight.bold,
                                                          color: _cm,
                                                        )
                                                        ),
                                                        Text(AppLocalizations.of(context)!.feet,
                                                        style: GoogleFonts.roboto(
                                                          fontWeight: FontWeight.bold,
                                                          color: _ft,
                                                        )
                                                        )
                                                      ]
                                                    ),
                                                  ),
                                                )
                                              )

                                            ],
                                          ),
                                        ),
                                      ),

                                    ]
                                  ),

                                  const SizedBox(height: 15,),

                                  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width * 0.43,
                                      decoration: BoxDecoration(
                                        color: Kcolors.lightBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child:
                                      TextFormField(
                                        autocorrect: false,
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.weight,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Image.asset(Kicons.bodyscale1,
                                            ),
                                          ),
                                          border: InputBorder.none,
                                          contentPadding: const EdgeInsets.symmetric(vertical: 3),
                                          floatingLabelStyle: TextStyle(color: Kcolors.darkBlue),
                                        )
                                        
                                      )
                                    ),

                                    GestureDetector(
                                      onTap: () {
                                        _weighttoggle();
                                      },
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.43,
                                        decoration: BoxDecoration(
                                          color: Kcolors.lightBlue,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        child:
                                        Stack(
                                          children: [
                                            AnimatedAlign(
                                              duration: const Duration(milliseconds: 300),
                                              alignment:
                                                  _weightisToggled ? Alignment.centerRight : Alignment.centerLeft,
                                              child: Container(
                                                width: 90,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: Kcolors.darkBlue,
                                                  borderRadius: BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),

                                            Positioned(
                                              child:
                                              Center(
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 40.0, right: 30),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text('Kg',
                                                      style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.bold,
                                                        color: _kg,
                                                      )
                                                      ),
                                                      Text(AppLocalizations.of(context)!.pounds,
                                                      style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.bold,
                                                        color: _lb,
                                                      )
                                                      )
                                                    ]
                                                  ),
                                                ),
                                              )
                                            )

                                          ],
                                        ),
                                      ),
                                    ),

                                    ]
                                  ),

                                   Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(top: 20, bottom: 30),
                                     child: GestureDetector(
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                                    // Process data
                                        }
                                     
                                        Navigator.pushNamed(context, secondintrodialog);
                                      },
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(context).size.width * 0.85,
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
                                   ),
                

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                  
                  
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}