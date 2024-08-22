










import 'package:flutter/material.dart';
import 'package:kisukari_mobile_app/src/reportsmain/reports/food_report/widgets/foodlinegraph.dart';

class FoodGraph extends StatefulWidget {
  const FoodGraph({super.key});

  @override
  State<FoodGraph> createState() => _FoodGraphState();
}

class _FoodGraphState extends State<FoodGraph> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child:
        const FoodLineChart() ,
    );
  }
}