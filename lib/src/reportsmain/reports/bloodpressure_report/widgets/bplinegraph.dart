





import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      duration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 10,
        minY: 0,
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
        // lineChartBarData1_3,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    final style = GoogleFonts.roboto(
      color: Kcolors.mainBlack, 
      fontSize: 14,
      fontWeight: FontWeight.w700,
      );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '2';
        break;
      case 3:
        text = '4';
        break;
      case 5:
        text = '6';
        break;
      case 7:
        text = '8';
        break;
      case 9:
        text = '10';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 30,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final style = GoogleFonts.roboto(
      fontSize: 14,
      color: Kcolors.darkBlue,
      fontWeight: FontWeight.w700,
      );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('1-06', style: style);
        break;
      case 3:
        text = Text('2-06', style: style);
        break;
      case 5:
        text = Text('3-06', style: style);
        break;
      case 7:
        text = Text('4-06', style: style);
        break;
      case 9:
        text = Text('5-06', style: style);
        break;
      case 11:
        text = Text('6-06', style: style);
        break;
      case 13:
        text = Text('7-06', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom:
              BorderSide(color: Kcolors.mainBlack.withOpacity(0.2), width: 1),
          left: BorderSide(color: Kcolors.mainBlack.withOpacity(0.2), width: 1),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: Kcolors.mainGreen,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(9, 2),
          FlSpot(11, 8),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: Kcolors.mainGold,
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: Kcolors.mainGold.withOpacity(0),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

 
}

class BpLineChart extends StatefulWidget {
  const BpLineChart({super.key});

  @override
  State<StatefulWidget> createState() => BpLineChartState();
}

class BpLineChartState extends State<BpLineChart> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top:30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16, left: 6),
                    child: _LineChart(isShowingMainData: isShowingMainData),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(right: 6.0, bottom: 15),
                child: Row(
                children: [
                  Row(
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: Icon(
                          Icons.arrow_downward,
                              color: Kcolors.mainBlack,
                              size: 16,
                        ),
                    
                      ),
                      Text(AppLocalizations.of(context)!.reporttablereading,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: Kcolors.mainBlack,
                        fontWeight: FontWeight.w700,
                        )
                      ),
                    ]
                  ),
                
                  Row(
                    children: [
                     
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Container(
                              height: 1,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Kcolors.mainGold
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(AppLocalizations.of(context)!.reporttablepressure,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Kcolors.mainBlack,
                                fontWeight: FontWeight.w700,
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),

                   Row(
                    children: [
                     
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Container(
                              height: 1,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Kcolors.mainGreen
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(AppLocalizations.of(context)!.reporttableheartbeat,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Kcolors.mainBlack,
                                fontWeight: FontWeight.w700,
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]
                  )
                
                ],
                ),
              ),
            ),
          ),
          Positioned(
          bottom: 0,
          child:
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Text(AppLocalizations.of(context)!.reporttabledate,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Kcolors.darkBlue,
                    fontWeight: FontWeight.w700,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, bottom: 15),
                  child: Icon(
                    Icons.arrow_forward,
                        color: Kcolors.mainBlack,
                        size: 16,
                  ),
              
                ),
              ],
              ),
            )

        )
         
        ],
      ),
    );
  }
}


