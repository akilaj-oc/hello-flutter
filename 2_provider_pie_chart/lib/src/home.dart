import 'package:flutter/material.dart';
import 'package:provider_pie_chart/src/widgets/chart.dart';
import 'package:provider_pie_chart/src/widgets/slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Spent'),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: MyChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: MySlider(),
          ),
        ],
      ),
    );
  }
}
