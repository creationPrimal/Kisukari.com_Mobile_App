








import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/excercise_report/widgets/excerciselinegraph.dart';

class ExcerciseGraph extends StatefulWidget {
  const ExcerciseGraph({super.key});

  @override
  State<ExcerciseGraph> createState() => _ExcerciseGraphState();
}

class _ExcerciseGraphState extends State<ExcerciseGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const ExcerciseLineChart() ,
    );
  }
}