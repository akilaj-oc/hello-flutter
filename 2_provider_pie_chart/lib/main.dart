import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/viewmodel/schedule.dart';
import 'src/widgets/chart.dart';
import 'src/widgets/slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MySchedule(),
      child: MaterialApp(
        home: Scaffold(
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
        ),
      ),
    );
  }
}
