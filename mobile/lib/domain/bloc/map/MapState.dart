import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:super_enum/super_enum.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';

part "MapState.g.dart";

@superEnum
enum _MapState {
  @object
  Initial,

  @Data(fields: [DataField<LatLng>('location')])
  InitialLocationReceived,

  @Data(fields: [
    DataField<LatLng>('location'),
    DataField<bool>('locationServiceEnabled')
  ])
  InitialLocationDefault,

  @Data(fields: [DataField<LatLng>('location')])
  LocationUpdateReceived,

  @object
  LocationSent,

  @object
  CameraMovedLoading,

  @Data(fields: [DataField<List<UserLocationWithTime>>('locations')])
  LocationsReceived,

  @object
  TimeChangedLoading,

  @Data(fields: [DataField<String>('error')])
  ErrorReceived,

  @Data(fields: [DataField<LatLng>('location')])
  MyCurrentLocationAvailable,

  @object
  MyCurrentLocationPermissionGranted,

  @object
  MyCurrentLocationPermissionNotGrantedYet,

  @object
  MyCurrentLocationPermissionDenied,

  @object
  ShowLocationPermissionRationale,

  @object
  DontShowLocationPermissionRationale,

  @object
  InitialLocationServiceRequestEnabled,

  @object
  InitialLocationServiceRequestDisabled,

  @object
  MyCurrentLocationServiceRequestEnabled,

  @object
  MyCurrentLocationServiceRequestDisabled,

  @object
  MyCurrentLocationServicesDisabled,
}
