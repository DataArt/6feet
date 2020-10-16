import 'package:location_permissions/location_permissions.dart';

import '../model/Result.dart';
import 'Command.dart';

class LocationPermissionCommand extends Command<Result<PermissionStatus>> {
  LocationPermissionCommand();

  @override
  Future<Result<PermissionStatus>> run() async {
    PermissionStatus permissionStatus =
        await LocationPermissions().requestPermissions(permissionLevel: LocationPermissionLevel.locationAlways);
    return Result.success(permissionStatus);
  }
}
