import 'package:tracking/domain/ApiProvider.dart';
import 'package:tracking/domain/model/UserLocationBounds.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';

import '../../model/Result.dart';
import '../Command.dart';

class GetLocationsByPositionCommand
    extends Command<Result<List<UserLocationWithTime>>> {
  UserLocationBounds _locationBounds;

  GetLocationsByPositionCommand(this._locationBounds);

  @override
  Future<Result<List<UserLocationWithTime>>> run() {
    return ApiProvider().getLocationsByPosition(_locationBounds);
  }
}
