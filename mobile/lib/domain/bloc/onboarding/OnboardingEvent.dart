import 'package:super_enum/super_enum.dart';

part 'OnboardingEvent.g.dart';

@superEnum
enum _OnboardingEvent {
  @object
  CheckPermission,

  @object
  RequestPermission,

  @object
  ShouldShowPermissionRationale,
}
