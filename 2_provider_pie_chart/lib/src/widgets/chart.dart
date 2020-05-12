import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_pie_chart/src/viewmodel/schedule.dart';
import 'package:fl_chart/fl_chart.dart';

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mySchedule = Provider.of<MySchedule>(context);
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 50, color: Colors.red, title: 'foo'),
          PieChartSectionData(
              value: _mySchedule.stateManagementTime * 100,
              color: Colors.amber,
              title: 'boo'),
          PieChartSectionData(value: 50, color: Colors.blue, title: 'bar'),
          PieChartSectionData(
              value: 50, color: Colors.greenAccent, title: 'far'),
        ],
        borderData: FlBorderData(
          show: false,
        ),
      ),
    );
  }
}
