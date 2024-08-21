

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
/* import 'package:kisukari_mobile_app/main.dart'; */
import 'package:kisukari_mobile_app/utils/settings/settings.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

 


  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  final data = GetStorage();
  late List<ChecklistItem> _items;
  
  
  @override
  void initState() {
    super.initState();
    _initializeitems();
    /* _setLanguage(context); */
  }

  void _initializeitems() {

    String savedLanguage = data.read('language') ?? Settings.language;

    _items = [
      ChecklistItem(name: 'Swahili', isChecked: savedLanguage == 'Swahili' ? true : false , iconPath: Kicons.flagTanzania),
      ChecklistItem(name: 'English', isChecked: savedLanguage == 'English' ? true : false, iconPath: Kicons.flagAmerica),
      ];
  }

 /*  void _setLanguage(BuildContext context) {
    String savedLanguage = data.read('language') ?? Settings.language;
    if(savedLanguage == 'Swahili') {
      MyApp.setLocale(context, const Locale('sw', ''));
    } else if (savedLanguage == 'English') {
      MyApp.setLocale(context, const Locale('en', ''));
    } else {MyApp.setLocale(context, const Locale('sw', ''));}
    setState(() {});
  }

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        elevation: 0.0,
        leading: const CustomBackButton(),
        title: Text('Choose Language',
          style: GoogleFonts.roboto(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Kcolors.mainRed
        )
        ),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 20, left:15, right: 15),
            decoration: BoxDecoration(
              color: Kcolors.lightBlue,
              borderRadius: BorderRadius.circular(50)
            ),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.red,
              splashRadius: 0.5,
              checkboxShape: CircleBorder(
                side: BorderSide(color: Kcolors.mainRed, width: 2.0)
              ),
              title: Text(
                _items[index].name,
                style: GoogleFonts.roboto(
                  fontSize: 20,
                ), 
              ),
              value: _items[index].isChecked,
              onChanged: (value) {
                /* _setLanguage(context); */
                setState(() {
                    // Uncheck all items
                    for (var item in _items) {
                      item.isChecked = false;
                    }
                    // Check the selected item
                    _items[index].isChecked = true;

                    // Save the selected language to local storage
                    data.write('language', _items[index].name);
                    
                    
                  });
              },
              secondary: Image.asset(_items[index].iconPath,
              height: 20,
              width: 35,
              fit: BoxFit.cover,
              ), // Add icon image here
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
    required this.iconPath,
    this.isChecked = false,
  });

  String name;
  String iconPath;
  bool isChecked;
}


