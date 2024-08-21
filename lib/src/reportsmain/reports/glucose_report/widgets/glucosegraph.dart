


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/glucose_report/widgets/glucoselinegraph.dart';

class GlucoseGraph extends StatefulWidget {
  const GlucoseGraph({super.key});

  @override
  State<GlucoseGraph> createState() => _GlucoseGraphState();
}

class _GlucoseGraphState extends State<GlucoseGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const GlucoseLineChart()
    );
  }
}