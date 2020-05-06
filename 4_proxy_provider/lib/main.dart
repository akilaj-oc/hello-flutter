import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:proxy_provider/src/services/geolocator_service.dart';

import 'src/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GeoLocatorService geoService = GeoLocatorService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider(create: (context) => geoService.getCoords()),
        ProxyProvider<Position, Future<List<Placemark>>>(
            update: (context, position, placemarks) =>
                (position != null) ? geoService.getAddress(position) : null),
      ],
      child: MaterialApp(
        title: 'Proxy Provider',
        theme: ThemeData(
          textTheme: TextTheme(
            body1: TextStyle(fontSize: 20),
          ),
        ),
        home: Welcome(),
      ),
    );
  }
}
