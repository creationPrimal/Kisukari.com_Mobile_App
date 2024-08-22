


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/providers/reportduration.dart';
import 'package:provider/provider.dart';

class DurationBtns extends StatefulWidget {
  const DurationBtns({super.key});

  @override
  State<DurationBtns> createState() => _DurationBtnsState();
}

class _DurationBtnsState extends State<DurationBtns> {

  late List<DurationList> durationlistbtns;

  

  @override
  void didChangeDependencies() {
    _durationBtnList(); // Initialize the buttons
    super.didChangeDependencies();
  }

  void _durationBtnList() {
    durationlistbtns = [
      DurationList(title: AppLocalizations.of(context)!.report7days, isActive: true),
      DurationList(title: AppLocalizations.of(context)!.report14days, isActive: false),
      DurationList(title: AppLocalizations.of(context)!.report30days, isActive: false),
      DurationList(title: AppLocalizations.of(context)!.reportselectdays, isActive: false),

    ];
  }

  void _durationbtnColorchange(int index) {
    final provider = Provider.of<ReportDuration>(context, listen: false);
    setState(() {
        for (int i = 0; i < durationlistbtns.length; i++) {
          durationlistbtns[i].isActive = false; //make the rest of the buttons to be false
        }
        durationlistbtns[index].isActive = true;
        provider.updateData(true);

        if (durationlistbtns[3].isActive) {
          Navigator.pushNamed(context, customizereport); // if custom then redirect to custimize the report
        }
       
    });
  }


  @override
  Widget build(BuildContext context) {
  
  

    return //time duration
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                durationlistbtns.length, (index)
              {
                final durationListBtn = durationlistbtns[index];
                return SizedBox(
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: ElevatedButton(
                    onPressed: () {
                      _durationbtnColorchange(index);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(durationListBtn.isActive ? Kcolors.darkBlue : Kcolors.lightBlue),
                      padding: const WidgetStatePropertyAll( EdgeInsets.all(0))
                    ),
                    child:
                      Text(durationListBtn.title,
                      style: GoogleFonts.roboto(
                        color: durationListBtn.isActive ? Kcolors.mainWhite : Kcolors.mainBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      )
                      )
                  
                  ),
                );
              })
              
            )
        );
  }
}



// Duration buttons
class DurationList {
  DurationList({
    required this.title,
    required this.isActive,
  });

  String title;
  bool isActive;

}



