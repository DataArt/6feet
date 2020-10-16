import 'package:location_permissions/location_permissions.dart';

import '../model/Result.dart';
import 'Command.dart';

class CheckLocationPermissionCommand extends Command<Result<PermissionStatus>> {
  CheckLocationPermissionCommand();

  @override
  Future<Result<PermissionStatus>> run() async {
    PermissionStatus permissionStatus =
        await LocationPermissions().checkPermissionStatus();
    return Result.success(permissionStatus);
  }
}
