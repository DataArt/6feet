import 'package:tracking/domain/ApiProvider.dart';
import 'package:tracking/domain/model/UserLocation.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';

import '../../model/Result.dart';
import '../Command.dart';

class SendLocationCommand extends Command<Result<UserLocationWithTime>> {
  UserLocation _location;

  SendLocationCommand(this._location);

  @override
  Future<Result<UserLocationWithTime>> run() {
    return ApiProvider().sendLocation(_location);
  }
}
