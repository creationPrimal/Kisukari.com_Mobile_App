

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/providers/languagesettings.dart';
/* import 'package:kisukari_mobile_app/main.dart'; */
import 'package:kisukari_mobile_app/utils/settings/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
  }

  void _initializeitems() {

    String savedLanguage = data.read('language') ?? Settings.language;

    _items = [
      ChecklistItem(name: 'Swahili', isChecked: savedLanguage == 'Swahili' ? true : false , iconPath: Kicons.flagTanzania),
      ChecklistItem(name: 'English', isChecked: savedLanguage == 'English' ? true : false, iconPath: Kicons.flagAmerica),
      ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        elevation: 0.0,
        leading: const CustomBackButton(),
        title: Text(AppLocalizations.of(context)!.chooseLanguage,
          style: GoogleFonts.roboto(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Kcolors.mainRed
        )
        ),
      ),
      body: Consumer<StorageProvider>(
        builder: (context, storageProvider, child) {
          return ListView.builder(
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
                        storageProvider.saveData( _items[index].name);
                        
                        
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
          );
        }
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


