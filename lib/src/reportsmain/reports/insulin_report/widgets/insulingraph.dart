







import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/insulin_report/widgets/insulinlinegraph.dart';

class InsulinGraph extends StatefulWidget {
  const InsulinGraph({super.key});

  @override
  State<InsulinGraph> createState() => _InsulinGraphState();
}

class _InsulinGraphState extends State<InsulinGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const InsulinLineChart() ,
    );
  }
}