import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:super_enum/super_enum.dart';
import 'package:tracking/domain/model/UserLocation.dart';

part 'MapEvent.g.dart';

@superEnum
enum _MapEvent {
  @object
  GetInitialLocation,

  @object
  StartListenLocationUpdates,

  @object
  MyLocationButtonPressed,

  @object
  GetMyLocation,

  @Data(fields: [DataField<UserLocation>('location')])
  SendLocation,

  @object
  ChangeTime,

  @Data(fields: [DataField<int>('hour'), DataField<LatLngBounds>('bounds')])
  GetLocationsForSelectedTime,

  @object
  CameraMoved,

  @Data(fields: [DataField<LatLngBounds>('bounds')])
  GetLocationsForCameraMoved,

  @object
  RequestLocationPermission,

  @object
  ShouldShowLocationPermissionRationale,

  @object
  RequestLocationServiceForInitialState,

  @object
  RequestLocationServiceForMyCurrentLocationButtonClick,
}
