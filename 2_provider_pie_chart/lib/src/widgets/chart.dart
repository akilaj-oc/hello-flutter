import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_pie_chart/src/viewmodel/schedule.dart';

class MyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _mySchedule = Provider.of<MySchedule>(context);
    return Text(
      '${(_mySchedule.stateManagementTime * 100).round()}%',
      style: TextStyle(
          color: Colors.grey[800],
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          fontFamily: 'Open Sans',
          fontSize: 40),
    );
  }
}
