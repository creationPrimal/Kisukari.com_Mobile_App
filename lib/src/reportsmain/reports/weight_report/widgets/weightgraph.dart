


import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/weight_report/widgets/weightinegraph.dart';

class WeightGraph extends StatefulWidget {
  const WeightGraph({super.key});

  @override
  State<WeightGraph> createState() => _WeightGraphState();
}

class _WeightGraphState extends State<WeightGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const WeightLineChart() ,
    );
  }
}