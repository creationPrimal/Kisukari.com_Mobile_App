




import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InsulinLineChart extends StatefulWidget {
  const InsulinLineChart({super.key});

  @override
  State<InsulinLineChart> createState() => _InsulinLineChartState();
}

class _InsulinLineChartState extends State<InsulinLineChart> {
  List<Color> gradientColors = [
    Kcolors.mainGold,
    Kcolors.darkBlue,
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 30),
          child: AspectRatio(
            aspectRatio: 1.70,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 12,
              ),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 6.0, bottom: 15),
              child: Icon(
                Icons.arrow_downward,
                    color: Kcolors.mainBlack,
                    size: 16,
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(AppLocalizations.of(context)!.total,
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Kcolors.darkBlue,
                fontWeight: FontWeight.w700,
                )
              ),
            ),
          ],
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
    );
  }

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
      child: text,
    );
  }

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

    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Text(text, style: style, textAlign: TextAlign.right),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return const FlLine(
            color: Color.fromARGB(8, 0, 0, 0),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return const FlLine(
            color: Colors.transparent,
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 26,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(color: const Color.fromARGB(41, 55, 67, 77)),
      ),
      minX: 0,
      maxX: 14,
      minY: 0,
      maxY: 10,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
            FlSpot(13, 8),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }

}


