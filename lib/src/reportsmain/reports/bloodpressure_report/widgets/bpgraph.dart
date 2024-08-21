




import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/bloodpressure_report/widgets/bplinegraph.dart';

class BpGraph extends StatefulWidget {
  const BpGraph({super.key});

  @override
  State<BpGraph> createState() => _BpGraphState();
}

class _BpGraphState extends State<BpGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const BpLineChart() ,
    );
  }
}