import 'package:location_permissions/location_permissions.dart';
import 'package:tracking/domain/command/CheckLocationPermissionCommand.dart';
import 'package:tracking/domain/command/LocationPermissionCommand.dart';
import 'package:tracking/domain/command/ShouldShowLocationRationaleCommand.dart';
import 'package:tracking/domain/model/Result.dart';

class LocationPermissionService {
  Future<Result<PermissionStatus>> checkLocationPermission() {
    return CheckLocationPermissionCommand().run();
  }

  Future<Result<PermissionStatus>> requestPermission() {
    return LocationPermissionCommand().run();
  }

  Future<Result<bool>> shouldShowRequestPermissionRationale() {
    return ShouldShowLocationRationaleCommand().run();
  }
}