import 'package:tracking/domain/command/CheckLocationServiceAvailabilityCommand.dart';
import 'package:tracking/domain/command/RequestLocationServiceCommand.dart';
import 'package:tracking/domain/model/Result.dart';

class LocationServiceAvailabilityService {
  Future<Result<bool>> checkLocationServiceAvailability() {
    return CheckLocationServiceAvailabilityCommand().run();
  }

  Future<Result<bool>> requestLocationService() {
    return RequestLocationServiceCommand().run();
  }
}
