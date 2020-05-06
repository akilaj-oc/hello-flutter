import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final addressProxy = Provider.of<Future<List<Placemark>>>(context);
    final position = Provider.of<Position>(context);
    return FutureProvider(
      create: (context) => addressProxy,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Basic AppBar'),
              ],
            ),
          ),
          body: (addressProxy != null)
              ? Consumer<List<Placemark>>(
                  builder: (_context, addressList, __widget) {
                    return (addressList != null)
                        ? _buildList(position, addressList[0])
                        : Center(child: CircularProgressIndicator());
                  },
                )
              : Center(child: CircularProgressIndicator())),
    );
  }
}

Widget _buildList(Position position, Placemark placemark) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Your Posistion', style: TextStyle(fontSize: 25)),
      ),
      ListTile(
        leading: Text('Latitude'),
        trailing: Text(position.latitude.toString()),
      ),
      ListTile(
        leading: Text('Longitude'),
        trailing: Text(position.longitude.toString()),
      ),
      ListTile(
        leading: Text('City'),
        trailing: Text(placemark.locality),
      ),
      ListTile(
        leading: Text('Country'),
        trailing: Text(placemark.country),
      )
    ],
  );
}
