
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/firstpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/ninethpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/secondpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/thirdpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/fourthpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/fifthpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/sixthpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/seventhpage.dart';
import 'package:kisukari_mobile_app/src/more_section/riskassesment/sugarassessment/pages/eighthpage.dart';
import 'package:kisukari_mobile_app/utils/loaders/testloader.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SugarAssessmentMain extends StatefulWidget {
  const SugarAssessmentMain({super.key});

  @override
  State<SugarAssessmentMain> createState() => _SugarAssessmentMainState();
}

class _SugarAssessmentMainState extends State<SugarAssessmentMain> {

    bool _isLoading = true; // loader screen
    @override
    void initState() {
      loadData();
      super.initState();
    }
    Future<void> loadData() async {
      await Future.delayed(const Duration(seconds: 2));
      setState(() {
        _isLoading = false;
      });
    }

    // next page
    void _nextPage() {
      if (_currentPage < _pages.length - 1) {
        _pageController.nextPage( duration:const Duration(milliseconds: 300), curve: Curves.easeInOut,);
      }
    }
    // previous page
    void _previousPage() {
      if (_currentPage > 0) {
        _pageController.previousPage( duration:const Duration(milliseconds: 300), curve: Curves.easeInOut,);
      }
    }
    // pages scroll
    final PageController _pageController = PageController(); // pageview controller
    int _currentPage = 0;
    late final List<Widget> _pages = [
      SugarFirstPage(callback: _nextPage),
      SugarSecondPage(nextPage: _nextPage, previousPage: _previousPage),
      SugarThirdPage(nextPage: _nextPage, previousPage: _previousPage),
      SugarFourthPage(nextPage: _nextPage, previousPage: _previousPage),
      SugarFifthPage(nextPage: _nextPage, previousPage: _previousPage),
      SugarSixthPage(nextPage: _nextPage, previousPage: _previousPage),
      SugarSeventhPage(nextPage: _nextPage, previousPage: _previousPage),
      SugarEighthPage(nextPage: _nextPage, previousPage: _previousPage),
      const SugarNinethPage()
    ];
    @override
    void dispose() {
      _pageController.dispose();
      super.dispose();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 40,
        leading: Container(
          height: 40, width: 40,
          margin: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: Kcolors.mainWhite,
            borderRadius: BorderRadius.circular(40),
          ),
          child:
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                padding: WidgetStateProperty.all(const EdgeInsets.all(0),)
              ),
              icon: Icon(Icons.arrow_back_ios_new_outlined, color: Kcolors.mainBlack, size: 22)
            )
        ),
        title:
          Text(
            AppLocalizations.of(context)!.morescreenTest,
            style: GoogleFonts.roboto(
              color: Kcolors.mainWhite,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          )
      ),
      extendBodyBehindAppBar: true,
      body:   
        _isLoading ?
        const TestLoader() // loader
        :
        Stack(
          children: [
            // background
            Positioned.fill(
              child: Image.asset(Kimages.selftestImage, fit: BoxFit.cover),
            ),
            // black color
            Positioned.fill(
              child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5)
              ),
              ),
            ),
            // body
            Positioned.fill(
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 15, right: 15),
                child:
                  PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(), // Disable swiping
                    onPageChanged: (int index) {
                      _currentPage = index;
                    },
                    children: _pages,
                  ),
              ),
            )
          ]
        ),
    );
  }
}




