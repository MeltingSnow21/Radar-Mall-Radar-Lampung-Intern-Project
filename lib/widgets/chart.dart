import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class FiChartPage extends StatefulWidget {
  const FiChartPage({Key? key}) : super(key: key);

  @override
  _FiChartPageState createState() => _FiChartPageState();
}

class _FiChartPageState extends State<FiChartPage> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(

            width: 300,
            height: 250,
            child: LineChart(
                LineChartData(
                    borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.white , width: 2)
                    ),
                    gridData: FlGridData(
                      show: true,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                            color: Colors.black12,
                            strokeWidth: 1
                        );
                      },
                      drawVerticalLine: true,
                      getDrawingVerticalLine: (value) {
                        return FlLine(
                            color: Colors.black12,
                            strokeWidth: 1
                        );
                      },
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 35,
                          getTextStyles: (context, value) {
                            return const TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            );
                          },
                          getTitles: (value) {
                            switch(value.toInt()){
                              case 0 :
                                return 'Sep 19';
                              case 4 :
                                return 'Oct 10';
                              case 8 :
                                return 'Nov 16';
                            }
                            return '';
                          },
                          margin: 8
                      ),
                      rightTitles: SideTitles(),
                      topTitles: SideTitles(),
                      leftTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 35,
                        getTextStyles: (context, value) {
                          return const TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          );
                        },
                        getTitles: (value) {
                          switch(value.toInt()){
                            case 0 :
                              return '0';
                            case 2 :
                              return '50';
                            case 4 :
                              return '100';
                            case 6 :
                              return '150';
                          }
                          return '';
                        },
                        margin: 12,
                      ),
                    ),
                    maxX: 8,
                    maxY: 8,
                    minY: 0,
                    minX: 0,
                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                             FlSpot(0, 0),
                             FlSpot(5, 2),
                           FlSpot(7, 4),
                            FlSpot(8, 6),

                          ],
                          isCurved: true,
                          colors: [Colors.black12 , Colors.white70 , Colors.white],
                          barWidth: 5,
                          belowBarData: BarAreaData(
                              show: true,
                              colors: gradientColors.map((e) => e.withOpacity(0.3)).toList()
                          )
                      )
                    ]
                )
            ),
          );
  }
}