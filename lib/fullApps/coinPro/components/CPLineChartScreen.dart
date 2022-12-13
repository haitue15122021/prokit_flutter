import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/coinPro/utils/CPColors.dart';

class CPLineChartScreen extends StatefulWidget {
  @override
  CPLineChartScreenState createState() => CPLineChartScreenState();
}

class CPLineChartScreenState extends State<CPLineChartScreen> {
  List<Color> gradientColor = [CPPrimaryColor, CPPrimaryColor];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      height: 350,
      width: 350,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
              show: false,
              getDrawingHorizontalLine: (value) {
                return FlLine(color: CPBorderText.withOpacity(0.3), strokeWidth: 1);
              },
              drawVerticalLine: false),
          borderData: FlBorderData(border: Border.all(color: Colors.transparent, width: 1)),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(2.6, 2),
                FlSpot(4.9, 4),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: true,
              colors: gradientColor,
              barWidth: 2.3,
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: false,
                colors: gradientColor.map(
                  (e) {
                    return e.withOpacity(0.3);
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LineTitles {
  static getTitleData() => FlTitlesData(
        leftTitles: SideTitles(
            showTitles: true,
            getTextStyles: (context) => primaryTextStyle(color: CPBorderText),
            getTitles: (val) {
              switch (val.toInt()) {
                case 1:
                  return '\$0';
                case 2:
                  return '\$10k';
                case 3:
                  return '\$26k';
                case 4:
                  return '\$39k';
                case 5:
                  return '\$54k';
              }
              return '';
            },
            reservedSize: 35),
        show: true,
        bottomTitles: SideTitles(
          getTextStyles: (context) => boldTextStyle(color: CPBorderText),
          showTitles: true,
          reservedSize: 38,
          getTitles: (val) {
            switch (val.toInt()) {
              case 0:
                return '1h';
              case 2:
                return '6h';
              case 4:
                return '24h';
              case 6:
                return '1w';
              case 8:
                return '1m';
              case 10:
                return '1y';
            }
            return '';
          },
        ),
      );
}
