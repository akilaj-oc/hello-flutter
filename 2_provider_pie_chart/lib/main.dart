import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_pie_chart/src/home.dart';
import 'package:provider_pie_chart/src/viewmodel/schedule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MySchedule(),
        )
      ],
      child: MaterialApp(
        title: 'FProvider Pie Chart',
        routes: {
          '/': (context) => Home(),
        },
      ),
    );
  }
}
