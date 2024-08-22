

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';

class CustomizeReport extends StatefulWidget {
  const CustomizeReport({super.key});

  @override
  State<CustomizeReport> createState() => _CustomizeReportState();
}

class _CustomizeReportState extends State<CustomizeReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Kcolors.mainWhite,
      appBar: AppBar(
        backgroundColor: Kcolors.mainWhite,
        scrolledUnderElevation: 0.0,
        leading:const CustomBackButton(),
      )

    );
  }
}