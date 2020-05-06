import 'package:geolocator/geolocator.dart';

class GeoLocatorService {
  final geo = Geolocator();

  Future<Position> getCoords() async {
    return await geo.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }

  Future<List<Placemark>> getAddress(Position position) async {
    return await Geolocator()
        .placemarkFromCoordinates(position.latitude, position.longitude);
  }
}
