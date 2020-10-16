import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:tracking/domain/command/GetCurrentLocationCommand.dart';
import 'package:tracking/domain/command/api/GetLocationsByPositionCommand.dart';
import 'package:tracking/domain/command/api/SendLocationCommand.dart';
import 'package:tracking/domain/model/Result.dart';
import 'package:tracking/domain/model/UserLocation.dart';
import 'package:tracking/domain/model/UserLocationBounds.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';

class MapService {
  final Geolocator _geoLocator = Geolocator();
  final LocationOptions _locationOptions = LocationOptions(
    accuracy: LocationAccuracy.best,
    timeInterval: 1000 * 60 * 30, // 30 mins
    distanceFilter: 500,
  );

  Future<Result<LatLng>> getCurrentLocation() {
    return GetCurrentLocationCommand().run();
  }

  Stream<Position> getPositionStream() {
    return _geoLocator.getPositionStream(_locationOptions);
  }

  Future<Result<UserLocationWithTime>> sendLocation(UserLocation location) {
    return SendLocationCommand(location).run();
  }

  Future<Result<List<UserLocationWithTime>>> getLocationsByPosition(
      UserLocationBounds locationBounds) {
    return GetLocationsByPositionCommand(locationBounds).run();
  }
}
