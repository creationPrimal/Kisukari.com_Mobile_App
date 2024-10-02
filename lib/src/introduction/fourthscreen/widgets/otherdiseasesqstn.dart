

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';

class Otherdiseasesqstn extends StatefulWidget {
  const Otherdiseasesqstn({super.key});

  @override
  State<Otherdiseasesqstn> createState() => _OtherdiseasesqstnState();
}

class _OtherdiseasesqstnState extends State<Otherdiseasesqstn> {

   // yes or no
  Color _yesBtn = Kcolors.lightBlue;
  bool _yesisChecked = false;  
  Color _noBtn = Kcolors.lightBlue;
  Color _yesBtnTitle = Kcolors.darkBlue;
  Color _noBtnTitle = Kcolors.darkBlue;

  void _yesbtnColorChange() {
    setState(() {
      _yesisChecked = true;

      _yesBtn = Kcolors.darkBlue;
      _yesBtnTitle = Kcolors.mainWhite;

      _noBtn = Kcolors.lightBlue;
      _noBtnTitle = Kcolors.darkBlue;
    });
  }

  void _nobtnColorChange() {
    setState(() {
      _yesisChecked = false;

      _noBtn = Kcolors.darkBlue;
      _noBtnTitle = Kcolors.mainWhite;

      _yesBtn = Kcolors.lightBlue;
      _yesBtnTitle = Kcolors.darkBlue;
    });
  }


  // diseases grid view buttons
  late List<GridViewItems> _gridviewitems;

  @override
  void didChangeDependencies() {
    _initializegridviewitems();
    super.didChangeDependencies();
  }

  void _initializegridviewitems() {
    _gridviewitems = [
      GridViewItems(name: AppLocalizations.of(context)!.bloodPressureDisease, imagePath: Kicons.bpIconIntro, bg: Kcolors.lightGrey, titlecolor: Kcolors.darkBlue, isSelected: false ),
      GridViewItems(name: AppLocalizations.of(context)!.heartDiseases, imagePath: Kicons.heartIconIntro, bg: Kcolors.lightGrey, titlecolor: Kcolors.darkBlue, isSelected: false),
      GridViewItems(name: AppLocalizations.of(context)!.kidneyDiseases, imagePath: Kicons.kidneyIconIntro, bg: Kcolors.lightGrey, titlecolor: Kcolors.darkBlue, isSelected: false),
      GridViewItems(name: AppLocalizations.of(context)!.hivDisease, imagePath: Kicons.hivIconIntro, bg: Kcolors.lightGrey, titlecolor: Kcolors.darkBlue, isSelected: false),
      GridViewItems(name: AppLocalizations.of(context)!.tbDisease, imagePath: Kicons.tbIconIntro, bg: Kcolors.lightGrey, titlecolor: Kcolors.darkBlue, isSelected: false),
      GridViewItems(name: AppLocalizations.of(context)!.heavyweightDisease, imagePath: Kicons.overweightIcon, bg: Kcolors.lightGrey, titlecolor: Kcolors.darkBlue, isSelected: false),
    ];

    
   

  }

  // btn color change in grid view
  void _colorChange(int index) {
  setState(() {
    /* // Uncheck all items
    for (var item in _gridviewitems) {
      item.isSelected = false;
      item.bg = Kcolors.lightGrey;
      item.titlecolor = Kcolors.darkBlue;
    } */
    // Check the selected item
    if(!_gridviewitems[index].isSelected) {
      _gridviewitems[index].isSelected = true;
      _gridviewitems[index].bg = Kcolors.darkBlue;
      _gridviewitems[index].titlecolor = Kcolors.mainWhite;
    } else {
      _gridviewitems[index].isSelected = false;
      _gridviewitems[index].bg = Kcolors.lightGrey;
      _gridviewitems[index].titlecolor = Kcolors.darkBlue;
    }
    
  });
}

 //adding new diseases
 bool newDiseases = false;
 bool newDiseasesBtn = true;

 void _addDisease() {
      setState(() {
        newDiseases = !newDiseases;
        newDiseasesBtn = !newDiseasesBtn;
      });
 }

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.width,
      child: Column(
        children: [

          // title for other diseases qstn
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.doyouhaveotherdiseases,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    fontSize: 22,
                    color: Kcolors.mainBlack,
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text(
                  AppLocalizations.of(context)!.infousagesubtitle,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    height: 1.2,
                    color: Kcolors.mainBlack,
                  )
                ),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 15),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    onPressed: () {
                      _yesbtnColorChange ();
                    },
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                      backgroundColor: WidgetStateProperty.all(_yesBtn),
                    ), 
                    child: 
                    Center(
                      child:
                      Text(AppLocalizations.of(context)!.yes,
                      style: GoogleFonts.roboto(
                        color: _yesBtnTitle,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                      )
                    )
                    ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ElevatedButton(
                    onPressed: () {
                      _nobtnColorChange ();
                    },
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                      backgroundColor: WidgetStateProperty.all(_noBtn),
                    ), 
                    child: 
                    Center(
                      child:
                      Text(AppLocalizations.of(context)!.no,
                      style: GoogleFonts.roboto(
                        color: _noBtnTitle,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )
                      )
                    )
                    ),
                )
              ],
            )
          ),

          if ( _yesisChecked) 
            Container(
              width:MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              child: Column(
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      AppLocalizations.of(context)!.selectamongthesediseases,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        height: 1.2,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),

                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: 450,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,  // Number of items per row
                          crossAxisSpacing: 10,  // Horizontal space between grid items
                          mainAxisSpacing: 10,  // Vertical space between grid items
                          childAspectRatio: 3/2.2, // Width/Height ratio of grid items
                        ),
                        itemCount: _gridviewitems.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GridTile(
                            child: SizedBox(
                              child: ElevatedButton(
                                onPressed: () {
                                  _colorChange(index);
                                },
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )),
                                  backgroundColor: WidgetStateProperty.all(_gridviewitems[index].bg),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 60,
                                        margin: const EdgeInsets.all(10),
                                        child: Image.asset(_gridviewitems[index].imagePath)
                                      ),
                                      Text(_gridviewitems[index].name,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          color: _gridviewitems[index].titlecolor,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        )
                                      )
                                    ]
                                  ),
                                ),
                              ),
                            )
                          );
                        }
                      )
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child:
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 30,
                                margin: const EdgeInsets.only(right: 5, bottom: 5),
                                child: 
                                Image.asset(Kicons.qstnmarkIconIntro,
                                fit: BoxFit.cover,
                                )
                              ),
                              SizedBox(
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(AppLocalizations.of(context)!.doyouhaveotherdiseasestwo,
                                    textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 22,
                                        height: 1.2,
                                        color: Kcolors.mainBlack,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.doyouhaveotherdiseasestwosubtitle,
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        color: Kcolors.darkBlue,
                                        fontWeight: FontWeight.bold,
                                      )
                                    ),
                                  ]
                                )
                              )
                            ]
                          )
                        ),

                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [

                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 7),
                                decoration: BoxDecoration(
                                  color: Kcolors.lightBlue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: TextFormField(
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    labelText: AppLocalizations.of(context)!.textTyping,
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                                    floatingLabelBehavior: FloatingLabelBehavior.never,
                                  )
                                  
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 7),
                                decoration: BoxDecoration(
                                  color: Kcolors.lightBlue,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: TextFormField(
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    labelText: AppLocalizations.of(context)!.textTyping,
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                                    floatingLabelBehavior: FloatingLabelBehavior.never,
                                  )
                                  
                                ),
                              ),

                              if (newDiseases)
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 7),
                                      decoration: BoxDecoration(
                                        color: Kcolors.lightBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: TextFormField(
                                        autocorrect: false,
                                        decoration: InputDecoration(
                                          labelText: AppLocalizations.of(context)!.textTyping,
                                          border: InputBorder.none,
                                          contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                        )
                                        
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 7),
                                      decoration: BoxDecoration(
                                        color: Kcolors.lightBlue,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: TextFormField(
                                        autocorrect: false,
                                        decoration:  InputDecoration(
                                          labelText: AppLocalizations.of(context)!.textTyping,
                                          border: InputBorder.none,
                                          contentPadding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                                          floatingLabelBehavior: FloatingLabelBehavior.never,
                                        )
                                        
                                      ),
                                    ),

                                  ],
                                ),

                              if(newDiseasesBtn) 
                                Container(
                                  height: 35,
                                  width: 200,
                                  margin: const EdgeInsets.only(top: 12),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _addDisease();
                                    },
                                    style: ButtonStyle(
                                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                      )),
                                      backgroundColor: WidgetStateProperty.all(Kcolors.darkBlue),
                                    ),
                                    child: Text(AppLocalizations.of(context)!.addDisease,
                                    style: GoogleFonts.roboto(
                                      color: Kcolors.mainWhite,
                                      fontSize: 19,
                                    )
                                    )
                                  )
                                )
                              


                            ]
                          )
                        )

                      ]
                    )
                  )

                ]
              )
            )

        ],
      )
    );
  }
}


class GridViewItems{
  GridViewItems ({
    required this.name,
    required this.imagePath,
    required this.bg,
    required this.titlecolor,
    required this.isSelected,
  });

  String name;
  String imagePath;
  Color bg;
  Color titlecolor;
  bool isSelected;
}