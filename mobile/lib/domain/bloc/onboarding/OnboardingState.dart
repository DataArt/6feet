import 'package:super_enum/super_enum.dart';

part "OnboardingState.g.dart";

@superEnum
enum _OnboardingState {
  @object
  Initial,

  @object
  Granted,

  @object
  NotGrantedYet,

  @object
  Denied,

  @object
  ShowLocationPermissionRationale,
}
