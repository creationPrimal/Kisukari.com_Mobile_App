

import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/fasting_report/widgets/fastinglinegraph.dart';

class FastingGraph extends StatefulWidget {
  const FastingGraph({super.key});

  @override
  State<FastingGraph> createState() => _FastingGraphState();
}

class _FastingGraphState extends State<FastingGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const FastingLineChart() ,
    );
  }
}