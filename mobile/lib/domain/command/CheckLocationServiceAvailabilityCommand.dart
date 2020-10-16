import 'package:geolocator/geolocator.dart';

import '../model/Result.dart';
import 'Command.dart';

class CheckLocationServiceAvailabilityCommand extends Command<Result<bool>> {
  CheckLocationServiceAvailabilityCommand();

  @override
  Future<Result<bool>> run() async {
    return Result.success(await Geolocator().isLocationServiceEnabled());
  }
}
