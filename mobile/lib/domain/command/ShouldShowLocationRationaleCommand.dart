import 'package:location_permissions/location_permissions.dart';

import '../model/Result.dart';
import 'Command.dart';

class ShouldShowLocationRationaleCommand extends Command<Result<bool>> {
  ShouldShowLocationRationaleCommand();

  @override
  Future<Result<bool>> run() async {
    bool isShown =
        await LocationPermissions().shouldShowRequestPermissionRationale();
    return Result.success(isShown);
  }
}
