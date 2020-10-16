import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter_heatmap/google_maps_flutter_heatmap.dart';
import 'package:location_permissions/location_permissions.dart';
import 'package:tracking/domain/bloc/map/MapEvent.dart';
import 'package:tracking/domain/bloc/map/MapState.dart';
import 'package:tracking/domain/model/UserLocation.dart';
import 'package:tracking/domain/model/UserLocationBounds.dart';
import 'package:tracking/domain/model/UserLocationWithTime.dart';
import 'package:tracking/domain/service/LocationPermissionService.dart';
import 'package:tracking/domain/service/LocationServiceAvailabilityService.dart';
import 'package:tracking/domain/service/MapService.dart';
import 'package:vector_math/vector_math.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final MapService _mapService;
  final LocationPermissionService _locationPermissionService;
  final LocationServiceAvailabilityService _locationServiceAvailabilityService;

  MapBloc(this._mapService, this._locationPermissionService,
      this._locationServiceAvailabilityService);

  List<UserLocationWithTime> locationList = List();

  StreamSubscription<Position> _locationUpdatesSubscription;
  LatLng currentLocation;
  LatLng extendedBoundsNortheast;
  LatLng extendedBoundsSouthwest;
  LatLng defaultInitialLocation = LatLng(51.477240, 0);
  UserLocationBounds extendedBounds;

  @override
  MapState get initialState => MapState.initial();

  @override
  Stream<MapState> mapEventToState(event) async* {
    yield* await event.when(
        getInitialLocation: (_) => getInitialLocation(),
        startListenLocationUpdates: (_) => _startLocationUpdates(),
        myLocationButtonPressed: (_) => _myLocationButtonPressed(),
        getMyLocation: (_) => _getMyLocation(),
        shouldShowLocationPermissionRationale: (_) =>
            _shouldShowLocationPermissionRationale(),
        requestLocationPermission: (_) => _requestLocationPermission(),
        requestLocationServiceForInitialState: (_) =>
            _requestLocationServiceForInitialState(),
        requestLocationServiceForMyCurrentLocationButtonClick: (_) =>
            _requestLocationServiceForMyCurrentLocationButtonClick(),
        sendLocation: (parameter) => _sendLocation(parameter.location),
        changeTime: (_) => _changeTime(),
        getLocationsForSelectedTime: (parameter) =>
            _getLocationsForSelectedTime(parameter),
        cameraMoved: (_) => _cameraMoved(),
        getLocationsForCameraMoved: (parameter) =>
            _getLocationsForCameraMoved(parameter.bounds));
  }

  Stream<MapState> getInitialLocation() async* {
    print("HSGHSLog MapBloc getInitialLocation");
    bool locationServicesEnabled = await isLocationServicesEnabled();
    if (locationServicesEnabled) {
      if (await isLocationPermissionGranted()) {
        var response = await _mapService.getCurrentLocation();
        if (response.isSuccess()) {
          currentLocation = response.data;
          yield MapState.initialLocationReceived(location: response.data);
        } else {
          yield MapState.errorReceived(error: response.message);
        }
      } else {
        yield MapState.initialLocationDefault(
            location: defaultInitialLocation,
            locationServiceEnabled: locationServicesEnabled);
      }
    } else {
      yield MapState.initialLocationDefault(
          location: defaultInitialLocation,
          locationServiceEnabled: locationServicesEnabled);
    }
  }

  Future<bool> isLocationPermissionGranted() async {
    var permissionStatus =
        await _locationPermissionService.checkLocationPermission();
    return permissionStatus.isSuccess() &&
        permissionStatus.data == PermissionStatus.granted;
  }

  Future<bool> isLocationServicesEnabled() async {
    var isAvailable = await _locationServiceAvailabilityService
        .checkLocationServiceAvailability();
    return isAvailable.isSuccess() && isAvailable.data;
  }

  Stream<MapState> _changeTime() async* {
    print("HSGHSLog MapBloc _changeTime");
    yield MapState.timeChangedLoading();
  }

  Stream<LocationUpdateReceived> _startLocationUpdates() async* {
    print("HSGHSLog MapBloc _startLocationUpdates");
    _locationUpdatesSubscription =
        _mapService.getPositionStream().listen((Position position) {
      if (position != null) {
        add(SendLocation(
            location: UserLocation(
                latitude: position.latitude, longitude: position.longitude)));
      }
    });
  }

  Stream<MapState> _myLocationButtonPressed() async* {
    print("HSGHSLog MapBloc _myLocationButtonPressed");
    if (await isLocationServicesEnabled()) {
      if (await isLocationPermissionGranted()) {
        yield MapState.myCurrentLocationPermissionGranted();
      } else {
        yield MapState.myCurrentLocationPermissionNotGrantedYet();
      }
    } else {
      yield MapState.myCurrentLocationServicesDisabled();
    }
  }

  Stream<MapState> _getMyLocation() async* {
    print("HSGHSLog MapBloc _getMyLocation");
    var response = await _mapService.getCurrentLocation();
    if (response.isSuccess()) {
      currentLocation = response.data;
      yield MapState.myCurrentLocationAvailable(location: response.data);
    } else {
      yield MapState.errorReceived(error: response.message);
    }
  }

  Stream<MapState> _shouldShowLocationPermissionRationale() async* {
    print("HSGHSLog MapBloc _shouldShowLocationPermissionRationale");
    var isShown =
        await _locationPermissionService.shouldShowRequestPermissionRationale();
    if (isShown.data) {
      yield MapState.dontShowLocationPermissionRationale();
    } else {
      yield MapState.showLocationPermissionRationale();
    }
  }

  Stream<MapState> _requestLocationPermission() async* {
    print("HSGHSLog MapBloc _requestLocationPermission");
    var permissionStatus = await _locationPermissionService.requestPermission();
    if (permissionStatus.isSuccess() &&
        permissionStatus.data == PermissionStatus.granted) {
      yield MapState.myCurrentLocationPermissionGranted();
    } else {
      yield MapState.myCurrentLocationPermissionDenied();
    }
  }

  Stream<MapState> _requestLocationServiceForInitialState() async* {
    print("HSGHSLog MapBloc _requestLocationService");
    var enabled =
        await _locationServiceAvailabilityService.requestLocationService();
    if (enabled.isSuccess() && enabled.data) {
      yield MapState.initialLocationServiceRequestEnabled();
    } else {
      yield MapState.initialLocationServiceRequestDisabled();
    }
  }

  Stream<MapState>
      _requestLocationServiceForMyCurrentLocationButtonClick() async* {
    print("HSGHSLog MapBloc _requestLocationService");
    var enabled =
        await _locationServiceAvailabilityService.requestLocationService();
    if (enabled.isSuccess() && enabled.data) {
      yield MapState.myCurrentLocationServiceRequestEnabled();
    } else {
      yield MapState.myCurrentLocationServiceRequestDisabled();
    }
  }

  Stream<MapState> _sendLocation(UserLocation location) async* {
    print("HSGHSLog MapBloc _sendLocation");
    var response = await _mapService.sendLocation(location);
    if (response.isSuccess()) {
      yield MapState.locationSent();
    } else {
      yield MapState.errorReceived(error: response.message);
    }
  }

  Stream<MapState> _getLocationsForSelectedTime(
      GetLocationsForSelectedTime getLocationsForSelectedTime) async* {
    print(
        "HSGHSLog MapBloc _getLocationsForSelectedTime ${getLocationsForSelectedTime.hour}");

    if (locationList.isNotEmpty) {
      yield MapState.locationsReceived(
          locations: _filter(getLocationsForSelectedTime.hour));
    } else {
      var response = await _mapService.getLocationsByPosition(
          getExtendedMapBounds(getLocationsForSelectedTime.bounds));
      if (response.isSuccess()) {
        locationList = response.data;
        yield MapState.locationsReceived(locations: response.data);
      } else {
        yield MapState.errorReceived(error: response.message);
      }
    }
  }

  List<UserLocationWithTime> _filter(int selectedHour) {
    return locationList
        .where((location) => location.getDateTime().hour == selectedHour)
        .toList();
  }

  Stream<MapState> _cameraMoved() async* {
    print("HSGHSLog MapBloc _cameraMoved");
    yield MapState.cameraMovedLoading();
  }

  Stream<MapState> _getLocationsForCameraMoved(LatLngBounds bounds) async* {
    if (extendedBounds != null && isBoundsInsideExtended(bounds)) {
      print(
          "HSGHSLog MapBloc _getLocationsForCameraMoved just return existing locations");
      yield MapState.locationsReceived(locations: locationList);
    } else {
      print(
          "HSGHSLog MapBloc _getLocationsForCameraMoved requesting locations for new bounds");
      var response = await _mapService
          .getLocationsByPosition(getExtendedMapBounds(bounds));
      if (response.isSuccess()) {
        locationList = response.data;
        yield MapState.locationsReceived(locations: response.data);
      } else {
        yield MapState.errorReceived(error: response.message);
      }
    }
  }

  UserLocationBounds getExtendedMapBounds(LatLngBounds bounds) {
    LatLng northeast = bounds.northeast;
    LatLng southwest = bounds.southwest;

    var increasePercentage = 3.0; // 300%
    var latAdjustment =
        (northeast.latitude - southwest.latitude) * (increasePercentage - 1);
    var lngAdjustment =
        (northeast.longitude - southwest.longitude) * (increasePercentage - 1);
    extendedBoundsNortheast = LatLng(northeast.latitude + latAdjustment,
        northeast.longitude + lngAdjustment);
    extendedBoundsSouthwest = LatLng(southwest.latitude - latAdjustment,
        southwest.longitude - lngAdjustment);

    extendedBounds = UserLocationBounds(
        latitude1: extendedBoundsSouthwest.latitude,
        longitude1: extendedBoundsSouthwest.longitude,
        latitude2: extendedBoundsNortheast.latitude,
        longitude2: extendedBoundsNortheast.longitude,
        timeFrom: DateTime.now().millisecondsSinceEpoch);
    return extendedBounds;
  }

  bool isBoundsInsideExtended(LatLngBounds bounds) {
    LatLng northeast = bounds.northeast;
    LatLng southwest = bounds.southwest;

    return northeast.latitude < extendedBoundsNortheast.latitude &&
        northeast.longitude < extendedBoundsNortheast.longitude &&
        southwest.latitude > extendedBoundsSouthwest.latitude &&
        southwest.longitude > extendedBoundsSouthwest.longitude;
  }

  @override
  close() {
    _locationUpdatesSubscription?.cancel();
    super.close();
  }
}
